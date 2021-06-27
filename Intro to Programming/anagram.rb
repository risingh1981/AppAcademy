def anagrams?(word1, word2)

    return char_count(word1) == char_count(word2)
end
  
def char_count(word)
    count = Hash.new(0)
    word.each_char do |char|
        count[char] += 1
    end
    
    return count
end
  
# p char_count("restfull")


puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false