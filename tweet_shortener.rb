def dictionary
  output={["hello"]=>"hi", ["to", "two", "too"]=>"2", ["for", "four"]=>"4", ["be"]=>"b", ["at"]=>"@", ["and"]=>"&"}
  return output
end

def word_substituter(tweet, dict=dictionary)
    output=[]
    tweet.split(" ").collect do |x|
        replace=false
        dictionary.keys.each do |longwords|
            if longwords.include?(x)
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
