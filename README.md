# Assignment
Affinity Answers

Assumptions:

1. The input file is a text file containing one tweet per line.
2. The set of racial slurs is provided in a text file, with one slur per line.
3. We consider a tweet to be profane if it contains at least one racial slur.
4. We measure the degree of profanity as the percentage of racial slurs in the tweet.

Explanation:

We first read in the file of racial slurs and store them in a vector called slurs. We then read in the file of tweets and store them in a vector called tweets.
We then loop through each tweet in the tweets vector and perform the following steps:
1. We split the tweet into individual words using the strsplit function.
2. We count the number of racial slurs in the tweet by checking which words in the tweet are in the slurs vector and summing up the results.
3. We calculate the degree of profanity by dividing the number of racial slurs by the total number of words in the tweet and multiplying by 100 to get a percentage.
4. We print out the tweet and the degree of profanity using the cat function, with appropriate formatting.
