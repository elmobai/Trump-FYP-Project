
require(twitteR)
require(RCurl)

consumer_key <-	'RzthYgmbqYcwKnEa13RWmWkFA'
consumer_secret <- 'myTxG4Mgx7yjxqTmm6C8aVdiz10SCgZ2czDLt0QQTt2picsESY'
access_token <- '116297351-goKlUCOvv4lsqnw7bO5G3KK4Ndd1uR4IYyUcylej'
access_secret <- 'oJoqoowUxPZ3EX3kfDsEJdft2lpNH0rZ1lYyD7TIjk0mR'

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
sink("output.txt")
userTimeline('realdonaldtrump',n=3199) # tweets from a user

#homeTimeline (n=15) # get tweets from home timeline

#mentions (n=15) # get your tweets that were retweeted

favs <- favorites("r_programming", n =10) # tweets a user has favorited

sink()
