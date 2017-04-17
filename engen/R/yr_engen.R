#' Yearly Energy Generation Summary Function
#' 
#' This function will calculate the average value of energy generation for each available year for a single plant.
#' @param df A Data Frame with the calculated monthly energy generation parameters
#' @param col The column with the plant names
#' @param plant The name of the plant to summarize data for
#' @param year The column with years to direct the function what to group the data by before summarizing
#' @param para The desired parameter to summarize
#' @keywords energy
#' @return Function will return a summary table for a single energy plant of the mean of a parameter per year
#' @examples
#' yr_engen(mon_gen_mo, "Plant.Name", "Alcova", "Year", "Percent.Generation")


yr_engen <- function(df, col, plant, year, para) {
  #subset rows for a partocilar plant
  df_pl <- df[df[ , col] == plant, ]
  #calculate mean of a parameter by year
  df_pl_ag <- aggregate(df_pl, list(df_pl[ , year]), mean)
  #only return the year and paramater columns
  df_pl_ag_sum <- df_pl_ag[ , c(year, para)]
  return(df_pl_ag_sum)
  }