def select_long_words(words)
    new_arr = []
    
    i = 0
    while i < words.length
      if words[i].length > 4
        new_arr << words[i]
      end
        i += 1
    end
    return new_arr
end
  
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])  