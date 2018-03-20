#data clensing take 2 
#elmobai 
#packages
library(bitops)
library(RCurl)
library(twitteR)
library(tm) 
library(stringr)


trumptweets[2:2]
# Conver to dataframe
dataset <- twListToDF(dataset)
unclass(dataset("#dataset", n=2600)[[1]])
#ldply(searchTwitter("#rstats", n=100), text)


#data clensing process 
trumptweetsCorpus <- VectorSource(trumptweets) 
#volcorpus
trumptweetsVolCorpus <- VCorpus(trumptweets) 

# convert all characters to lower case 
tm_map (trumptweetsVolCorpus, tolower )
myCorpus <- tm_map(myCorpus, content_transformer(tolower))
#remove webaddresses 
removeURL <- function(x) gsub("http[^[:space:]]*", "", x)
myCorpus <- tm_map(myCorpus, content_transformer(removeURL))