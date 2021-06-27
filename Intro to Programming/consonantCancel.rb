def consonant_cancel(sentence)
  
    arr = sentence.split(" ")
    
    new_arr =arr.map do |word|
      cancel(word)
    end
    
    return new_arr.join(" ")
end
  
def cancel(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
      if vowels.include?(char)
        return word[i..-1]  
      end
    end
end
  
#p cancel("rabbit")
puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"