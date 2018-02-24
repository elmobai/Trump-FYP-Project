
#make sure packages below are installed 
library(twitteR)
library(RCurl)
consumer_key <-	'RzthYgmbqYcwKnEa13RWmWkFA'
consumer_secret <- 'myTxG4Mgx7yjxqTmm6C8aVdiz10SCgZ2czDLt0QQTt2picsESY'
access_token <- '116297351-goKlUCOvv4lsqnw7bO5G3KK4Ndd1uR4IYyUcylej'
access_secret <- 'oJoqoowUxPZ3EX3kfDsEJdft2lpNH0rZ1lYyD7TIjk0mR'
setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

tweets <- userTimeline("realDonaldTrump", n = 3199)
(n.tweet <- length(tweets))

tweets[1:3]
# Converting these reults to a dataframe
tweets.pr <- twListToDF(tweets)

tweets.pr

#data clensing process 

library(tm) 
library(stringr)
myCorpus <- Corpus(VectorSource(tweets.pr$text)) 
# convert all characters to lower case 
myCorpus <- tm_map(myCorpus, content_transformer(tolower))
#remove webaddresses 
removeURL <- function(x) gsub("http[^[:space:]]*", "", x)
myCorpus <- tm_map(myCorpus, content_transformer(removeURL))