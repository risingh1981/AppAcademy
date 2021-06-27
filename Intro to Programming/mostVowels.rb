def most_vowels(sentence)
    words = sentence.split
    counts = {}
    
    words.each do |word|
      counts[word] = vowel_count(word)
    end
    
    sorted = counts.sort_by { |k,v| v}
    return sorted[-1][0]
  
  end
  
def vowel_count(word)
    vowels = "aeiou"
    count = 0
    word.each_char do |char|
      if vowels.include?(char)
        count += 1
      end
    end
    return count
end
  
# puts vowel_count("Wonderful")
print most_vowels("what a wonderful life") #=> "wonderful"