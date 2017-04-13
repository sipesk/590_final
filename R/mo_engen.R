mo_engen <- function(df, ins_cap, mo_name, net_gen, per_gen) {
  df[ , mo_name] <- 24 * 30 * df[ , ins_cap]
  df[ , per_gen] <- df[ , net_gen]/df[ , mo_name]
  return(df)
}