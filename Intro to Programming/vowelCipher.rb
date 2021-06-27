def vowel_cipher(string)
    vowels = "aeiou"
    str = ""
    
    string.each_char do |char|
      if vowels.include?(char)
        old_idx = vowels.index(char)
        new_idx = (old_idx + 1) % 5
        str += vowels[new_idx]
      else
        str += char
      end
    end
    return str
end
  
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap