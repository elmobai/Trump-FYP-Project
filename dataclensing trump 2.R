#data clensing take 2 
#elmobai 
#packages
library(bitops)
library(RCurl)
library(twitteR)


dataset[2:3]
# Conver to dataframe
dataset <- twListToDF(dataset)
unclass(dataset("#dataset", n=2600)[[1]])
#ldply(searchTwitter("#rstats", n=100), text)