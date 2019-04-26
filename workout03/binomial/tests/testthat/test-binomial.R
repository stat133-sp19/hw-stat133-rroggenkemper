library(testthat)

context("Check checker functions")

source("../../R/check.R")

test_that("check_prob works", {
  expect_true(check_prob(1))
  expect_error(check_prob(2))
  expect_error(check_prob(-1))
})

test_that("check_trials works", {
  expect_true(check_trials(5))
  expect_error(check_trials(4.5))
  expect_error(check_trials(-1))
})

test_that("check_success works", {
  expect_true(check_success(5, 7))
  expect_error(check_success(5, 7.1))
  expect_error(check_success(5, 3))
})



context("Check summary functions")

source("../../R/auxiliary.R")

test_that("aux_mean works", {
  expect_equal(aux_mean(5, .5), 2.5)
  expect_equal(length(aux_mean(5, .5)), 1)
  expect_equal(aux_mean(10, .5), 5)
})

test_that("aux_variance works", {
  expect_equal(aux_variance(5, .5), 1.25)
  expect_equal(length(aux_variance(5, .5)), 1)
  expect_equal(aux_variance(10, .5), 2.5)
})

test_that("aux_mode works", {
  expect_equal(aux_mode(5, .5), 3)
  expect_equal(length(aux_mode(5, .5)), 1)
  expect_equal(aux_mode(10, .5), 5)
})

test_that("aux_skewness works", {
  expect_equal(aux_skewness(5, .5), 0)
  expect_equal(length(aux_skewness(5, .5)), 1)
  expect_equal(aux_skewness(10, .5), 0)
})

test_that("aux_kurtosis works", {
  expect_equal(aux_kurtosis(5, .5), -0.4)
  expect_equal(length(aux_kurtosis(5, .5)), 1)
  expect_equal(aux_kurtosis(10, .5), -0.2)
})



context("Check main functions")

setwd("../../")
source("R/main.R")

test_that("bin_choose works", {
  expect_equal(bin_choose(5, 3), 10)
  expect_equal(bin_choose(7, 3), 35)
  expect_equal(length(bin_choose(5, 3)), 1)
})

test_that("bin_probability works", {
  expect_equal(bin_probability(3, 5, .5), .3125)
  expect_error(bin_probability(6, 5, .4))
  expect_error(bin_probability(3, 5, 1.1))
})

test_that("bin_distribution works", {
  a = bin_distribution(5, .5)
  expect_is(a, c("bindis", "data.frame"))
  expect_equal(nrow(a), 6)
  expect_equal(a[6, 2], .03125)
})

test_that("bin_cumulative works", {
  a = bin_cumulative(5, .5)
  expect_is(a, c("bincum", "data.frame"))
  expect_equal(nrow(a), 6)
  expect_equal(a[6, 3], 1)
})
