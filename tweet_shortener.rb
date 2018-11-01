def dictionary
  output={["hello"]=>"hi", ["to", "two", "too"]=>"2", ["for", "four"]=>"4", ["be"]=>"b", ["at"]=>"@", ["and"]=>"&", ["you"]=>"u"}
  return output
end

def word_substituter(tweet)
    output=[]
    tweet.split(" ").collect do |x|
        replace=false
        dictionary.keys.each do |longwords|
            if longwords.include?(x.downcase)
                replace=dictionary[longwords]
            end
        end
        if replace==false
            output.push(x)
        else
            output.push(replace)
        end
    end
    output.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
  end
end
