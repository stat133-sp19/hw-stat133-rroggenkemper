# private function to check if a probability is valid
check_prob = function(prob) {
  if (prob < 0 || 1 < prob) {
    stop("p has to be a number between 0 and 1")
  } else {
    return (TRUE)
  }
}


# private function to check if trials is valid
check_trials = function(trials) {
  if (trials %% 1 == 0 && trials >= 0) {
    return (TRUE)
  } else {
    stop("invalid trial value")
  }
}

# private function to check if success is valid
check_success = function(success, trials) {
  if (all(success %% 1 == 0) &&
      all(success >= 0) &&
      all(success <= trials) &&
      check_trials(trials)) {
        return(TRUE)
  } else {
    stop("invalid success value")
  }
}
