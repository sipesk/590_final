yr_nameplate <- function(df, ins_cap) {
  df$Yearly.Nameplate.Generation <- 24 * 365 * df$ins_cap
  df
}