# Write your code here.
def dictionary
 dictionary = {
   "too" => "2",
   "to" => "2",
   "two" =>"2",
   "four" => "4",
   "for" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
 }
 end
 
 def word_substituter(tweet)
     tweet.split.collect do |word|  
         if dictionary.keys.include?(word.downcase)
             word = dictionary[word.downcase]
         else
            word 
         end
     end.join(" ")  
 end
 
 def bulk_tweet_shortener(tweets)
   tweets.each do |word| 
       puts word_substituter(word)
   end
 end
 
def selective_tweet_shortener(tweet)
     if tweet.length > 140
         word_substituter(tweet) 
     else
         tweet
     end
end

     
 def shortened_tweet_truncator(tweet)
   if word_substituter(tweet).length > 140 
     word_substituter(tweet)[0..139] 
   else
     tweet
   end
 end 