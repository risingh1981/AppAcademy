def yell(words)
    new_arr = []
    i = 0 
    while i < words.length
      new_arr << words[i] + "!"
      i += 1
    end
    
    return new_arr
end
  
print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]