#' @title Future value
#' @description computes future value
#' @param amount present value (invested amount)
#' @param rate annual rate of return
#' @param years time in years
#' @return future value
future_value = function(amount, rate, years) {
  return (amount * (1 + rate)^years)
}

#' @title Future value of Annuity
#' @description computes future value of annuity
#' @param contrib amount invested each year
#' @param rate annual rate of return
#' @param years time in years
#' @return future value of annuity
annuity = function(contrib, rate, years) {
  return (contrib * (((1 + rate)^years - 1) / rate))
}

#' @title Future value of Annuity
#' @description computes future value of annuity
#' @param contrib amount invested each year
#' @param rate annual rate of return
#' @param growth annual growth rate 
#' @param years time in years
#' @return future value of annuity
growing_annuity = function(contrib, rate, growth, years) {
  return (contrib * (((1 + rate)^years - (1 + growth)^years) / (rate - growth)))
}

make_table = function(amount, contrib, rate, growth, num_years) {
  # rate and growth passed in as percents
  rate = rate/100
  growth = growth/100
  years = 0:num_years
  m1 = rep(0, num_years + 1)
  m2 = rep(0, num_years + 1)
  m3 = rep(0, num_years + 1)
  
  for (t in years) {
    m1[t+1] = future_value(amount, rate, t)
    m2[t+1] = future_value(amount, rate, t) + annuity(contrib, rate, t)
    m3[t+1] = future_value(amount, rate, t) + growing_annuity(contrib, rate, growth, t)
  }

  modalities = data.frame(year=years,
                          no_contrib = m1,
                          fixed_contrib = m2, 
                          growing_contrib = m3)
  return(modalities)
}