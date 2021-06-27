def reverse_words(sent)
    new_arr = []
    
    arr = sent.split(" ")
    
    arr.each do |word|
      new_word = ""
      word.each_char do |char|
        new_word = char + new_word
      end
      new_arr << new_word
    end
    
    return new_arr.join(" ")
end
  
puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'