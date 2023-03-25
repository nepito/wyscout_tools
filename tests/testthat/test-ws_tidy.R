describe("filter_premier_league", {
  chelsea <- read_team_stats("/workdir/tests/data/Chelsea.csv")
  chelsea_in_premier <- filter_premier_league(chelsea)
  expected <- "England. Premier League"
  obtained <- chelsea_in_premier$Competition |>
    unique()
  expect_equal(obtained, expected)
})

describe("obtain_passes_to_final_third_of_two_teams_by_match", {
  raw_data <- tibble(
    Date = rep(c("a", "b", "c"), 2),
    Passes_to_final_third_accurate = 1:6
  )
  expected <- tibble(
    Date = c("a", "b", "c"),
    Passes_to_final_third_accurate = c(4, 6, 9)
  )
  obtained <- obtain_passes_to_final_third_of_two_teams_by_match(raw_data)
  expect_equal(obtained, expected)
})
