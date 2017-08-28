plot.stairs <- function(df){
  require(ggplot2)
  require(forcats)
  x$step <- fct_reorder(f = step,x = n,fun = max)
  g = ggplot(data = df, aes(x = step,
                        y = n)) +
    geom_bar(stat = "identity")
  return(g)
}
