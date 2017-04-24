#' Monthly Energy Generation Graphing Function
#' 
#' This function will generate a series of graphs based on the output from mo_engen() for an energy plant broken up by year displaying parameter trend over time
#' @param df A dataframe
#' @param col The name column containing plant names (character strings)
#' @param plant A character string of the despired plant to subset
#' @param para The desired numeric column to be the x axis (net generation, percent, etc)
#' @param month The numeric column of months
#' @param year The numeric column of years
#' @keywords energy
#' @return Function with return a series of graphs displaying parameter trends overtime by year
#' @examples
#' mo_engen_gr(mon_gen_mo, "Plant.Name", "Alvoca", "Month", "Year")



mo_engen_gr <- function(df, col, plant, para, month, year) {
  df_gr <- df[df[ , col] == plant, ]
  ggplot(df_gr, aes(df_gr[ , para], df_gr[ , month])) +
    geom_point() +
    xlab(para) +
    ylab(month) +
    scale_x_continuous(breaks=seq(1,12,1)) + 
    facet_wrap(~ df_gr[ , year])
}