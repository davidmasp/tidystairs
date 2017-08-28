
plot_stairs <- function(df){
  require(ggplot2)
  require(forcats)
  st = attributes(df)$stairs
  st$step <- fct_reorder(f = st$step,x = st$n,fun = max,.desc = T)
  g = ggplot(data = st, aes(x = step,
                            y = n)) +
    geom_bar(stat = "identity")
  return(g)
}
