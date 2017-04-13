mo_engen_gr <- function(df, col, plant, x, y, z) {
  df_gr <- df[df[ , col] == plant, ]
  ggplot(df_gr, aes(df_gr[ , x], df_gr[ , y])) +
    geom_point() +
    xlab(x) +
    ylab(y) +
    scale_x_continuous(breaks=seq(1,12,1)) + 
    facet_wrap(~ df_gr[ , z])
}