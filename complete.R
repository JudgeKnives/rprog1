complete <- function(directory, id=1:332)
{
  completedata <- data.frame(numeric(), numeric())
  lfile <- list.files(path=directory)
  
  for(i in id)
  {
    filenum <- lfile[i]
    filenum <- file.path(directory, filenum)
    data = read.csv(filenum)
    n <- nrow(na.omit(data))
    rdat <- c(i, n)
    completedata <- rbind(completedata, rdat)
  }
  names(completedata) <- c("id", "nobs")
  completedata
  
}