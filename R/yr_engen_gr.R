yr_engen_gr <- function(df, year, para) {
  df_gr <- ggplot(df, aes(df[ , year], df[ , para])) +
    geom_point() +
    xlab(year) +
    ylab(para) +
    ylim(0,1) 
  return(df_gr)
}