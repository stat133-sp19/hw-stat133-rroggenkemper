# private function to compute mean
aux_mean = function(trials, prob) {
  return (trials * prob)
}

# private function to compute variance
aux_variance = function(trials, prob) {
  return (trials * prob * (1 - prob))
}

# private function to compute mode
aux_mode = function(trials, prob) {
  return (as.integer(trials * prob + prob))
}

# private function to compute skewness
aux_skewness = function(trials, prob) {
  return(
    (1 - 2*prob) / sqrt(trials * prob * (1 - prob))
  )
}

#private function to compute kurtosis
aux_kurtosis = function(trials, prob) {
  return (
    (1 - 6 * prob * (1 - prob)) / (trials * prob * (1 - prob))
  )
}

