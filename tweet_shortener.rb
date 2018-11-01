def dictionary
  output={["hello"]=>"hi", ["to", "two", "too"]=>"2", ["for", "four"]=>"4", ["be"]=>"b", ["at"]=>"@", ["and"]=>"&"}
  return output
end

def word_substituter(tweet, dict=dictionary)
  
  tweet.split(" ").each do |x|
    x.collect do |y|
      puts y
    end
  end
end

word_substituter("this is a test")