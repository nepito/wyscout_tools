filter_premier_league <- function(team_stats) {
  team_stats |>
    dplyr::filter(grepl("Premier", Competition))
}