pollutantmean <- function(directory, pollutant, id=1:332)
{
  l <- length(id)
  
  if(id[1]<100)
  {
    filenum <- paste(0,id[1],".csv",sep="")
    if(id[1]<10)
    {
      filenum <- paste(0,filenum,sep="")
    }
  }
  filenum <- file.path(directory, filenum)
  datatab <- read.csv(filenum)
    
  for(i in 2:l)
  {
    if(id[i]<100)
    {
      filenum <- paste(0,id[i],".csv",sep="")
      if(id[i]<10)
      {
        filenum <- paste(0,filenum,sep="")
      }
    }
    filenum <- file.path(directory, filenum)
    data = read.csv(filenum)
    datatab <- rbind(datatab, data)
  }
  pollmean <- mean(datatab[,pollutant], na.rm = TRUE)
  pollmean
}