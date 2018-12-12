remove_cols <- function(y){
  cols <- y[2,]
  cols <- cols[cols!=""]
  y <- y[-c(1,2),]
  y <- y %>% data.frame() %>% 
    dplyr::select_if(function(x){!all(x=="")})
  #colnames(y) <- cols
  y
}