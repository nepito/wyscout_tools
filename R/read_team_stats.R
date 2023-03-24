read_team_stats <- function(path) {
  team <- readr::read_csv(path, show_col_types = FALSE)
  all_names <- readr::read_csv("/workdir/tests/data/team_stats_column_names.csv", show_col_types = FALSE)
  names(team) <- all_names$column_names
  return(team)
}
