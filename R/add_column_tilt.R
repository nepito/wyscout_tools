add_tilt <- function(team_stats) {
  total_passes <- obtain_passes_to_final_third_of_two_teams_by_match(team_stats)
  team_stats_with_tilt <- team_stats |>
    left_join(total_passes, by = "Date") |>
    mutate(tilt = 100 * Passes_to_final_third_accurate / total_passes_to_final_third)
}
