library(tidyverse)

describe("add_tilt", {
  raw_data <- tibble(
    Date = rep(c("a", "b", "c"), 2),
    Passes_to_final_third_accurate = 1:6
  )
  expected <- tibble(
    Date = rep(c("a", "b", "c"), 2),
    Passes_to_final_third_accurate = 1:6,
    total_passes_to_final_third = rep(c(5, 7, 9), 2),
    tilt = c(100 / 5, 200 / 7, 300 / 9, 400 / 5, 500 / 7, 600 / 9)
  )
  obtained <- add_tilt(raw_data)
  expect_equal(obtained, expected)
})
