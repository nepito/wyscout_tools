describe("filter_premier_league", {
  chelsea <- read_team_stats("/workdir/tests/data/Chelsea.csv")
  chelsea_in_premier <- filter_premier_league(chelsea)
  expected <- "England. Premier League"
  obtained <- chelsea_in_premier$Competition |>
    unique()
  expect_equal(obtained, expected)
})