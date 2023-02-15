# Read in the file of racial slurs
slurs <- readLines("slurs.txt")

# Read in the file of tweets
tweets <- readLines("tweets.txt")

# Loop through each tweet and calculate the degree of profanity
for (tweet in tweets) {
  # Split the tweet into individual words
  words <- strsplit(tweet, "\\s")[[1]]
  
  # Count the number of racial slurs in the tweet
  num_slurs <- sum(words %in% slurs)
  
  # Calculate the degree of profanity as a percentage of the total words
  profanity <- num_slurs / length(words) * 100
  
  # Print the result
  cat("Tweet:", tweet, "\n")
  cat("Degree of Profanity:", round(profanity, 2), "%\n\n")
}