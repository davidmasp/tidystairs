# optimals
# pb = create_stairs
# pipeing %>% pb
# plot(pb)

create_stairs <- function(df){
  attributes(df)$stairs <- data.frame(step = c(),n = c())
  return(df)
}


set_stairs <- function(df,name = "sample"){
  ntmp = nrow(df)
  tmp = data.frame(step = name,n = ntmp)
  attributes(df)$stairs <- rbind(attributes(df)$stairs,tmp)
  return(df)
}

get_stairs <- function(df) {
  if(!"stairs" %in% names(attributes(df))){
    stop("DF has not been initiated, use create_stairs(df)")
  }
  st <- attributes(df)$stairs
  class(st) <- "stairs"
  return(st)
}
