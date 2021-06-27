def abbreviate_sentence(sent)
    words = sent.split(" ")
    newWords= []
    words.each do |word|
      if word.length > 4
        newWord = remove(word)
        newWords << newWord
      else
        newWords << word
      end
    end
        
    return newWords.join(" ")
end
    
def remove(word)
    
    vowels = "aeiou"
    edit = ""
    
    word.each_char do |char|
      if !vowels.include?(char)
        edit += char
      end
    end
    return edit
end
      
    
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life") 