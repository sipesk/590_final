yr_engen <- function(df, plante, year, net_gen, mo_name) {
  yearly.generation <- df %>%
    group_by(plant, year) %>%
    summarize(avg.yearly.net.generation = mean(net_gen), avg.yearly.nameplate = mean(mo_name)) %>%
    mutate(percent.yearly.net.generation = avg.yearly.net.generation/avg.yearly.nameplate)
  df
}