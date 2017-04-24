#' Monthly Energy Generation Calculator
#' 
#' This function take the installed capacity of a plant to determines the monthly nameplate generation and determines the net generation as a percent of the nameplate generation as a measure of production
#' @param df A dataframe
#' @param ins_cap numeric column of Installed Capacity
#' @param mo_name name of generated numeric column of Monthly Nameplate Generation
#' @param net_gen numeric column of Net Generation
#' @param per_gen name of generated numeric column of Percent Net Energy Generation 
#' @keywords energy
#' @return Dataframe with 2 new columns containing nameplate and percent net generation
#' @examples
#' mo_engen(mon_gen, "Installed.Capacity", "Monthly.Nameplate", "Net.Generation", "Percent.Generation")


mo_engen <- function(df, ins_cap, mo_name, net_gen, per_gen) {
  df[ , mo_name] <- 24 * 30 * df[ , ins_cap]
  df[ , per_gen] <- df[ , net_gen]/df[ , mo_name]
  return(df)
}