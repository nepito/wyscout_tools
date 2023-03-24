library(tidyverse)

describe("read data with the right names", {
  liverpool <- read_team_stats("/workdir/tests/data/Liverpool.csv")
  expected <- read_csv("/workdir/tests/data/team_stats_column_names.csv", show_col_types = FALSE)
  obtained <- names(liverpool)
  expect_equal(obtained, expected$column_names)
})