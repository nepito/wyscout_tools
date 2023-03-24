#' Read the team stats of wyscout data
#'
#' @param path A character with the path of the data.
#'
#' @return A tibble with the stats of some team.
#' @export
read_team_stats <- function(path) {
  team <- readr::read_csv(path, show_col_types = FALSE, col_names = all_names$column_names)
  return(team)
}
