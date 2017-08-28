
create_stairs <- function(name=NULL){
  stairs_object <<- structure(data.frame(),class="stairs")
}

add_stair <- function(df,stairs,name = "Sample"){
  n = nrow(df)
  tmp = data.frame(step = name,n = n)
  stairs_object <<- rbind(stairs,tmp)
  return(df)
}


