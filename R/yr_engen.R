yr_engen <- function(df, col, plant, year, para) {
  #subset rows for a partocilar plant
  df_pl <- df[df[ , col] == plant, ]
  #calculate mean of a parameter by year
  df_pl_ag <- aggregate(df_pl, list(df_pl[ , year]), mean)
  #only return the year and paramater columns
  df_pl_ag_sum <- df_pl_ag[ , c(year, para)]
  return(df_pl_ag_sum)
  }