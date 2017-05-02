library(testthat)
library(insultfunction)
context("Insult Function Output")

test_check("insultfunction")

test_that("insultfunction gives correct response when user answers 'well'", {
  expect_equal(insult_function('Well'), "What a tool.  You smell.")
  expect_equal(insult_function('well'), "What a tool.  You smell.")
})

test_that("insultfunction gives correct response when user answers 'poorly'", {
  expect_equal(insult_function('poorly'), "Who cares?")
  expect_equal(insult_function('Poorly'), "Who cares?")
})

test_that("insultfunction gives correct response when user responds with any other input", {
  expect_equal(insult_function(1234), "Are you stupid?")
  expect_equal(insult_function(porly), "Are you stupid?")
  expect_equal(insult_function(1.234), "Are you stupid?")
})