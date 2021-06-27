def hipsterfy(word)
    reverse = word.reverse
    reverse.each_char.with_index do |char,i|
        if ("aeiou").include?(char)
            reverse[i] = ""
            break
        end
    end
    reverse.reverse
end

def vowel_counts(str)
    vowels = Hash.new(0)
    str.downcase.each_char do |char|
        if ("aeiou").include?char
            vowels[char] += 1
        end
    end
    vowels
end

def caesar_cipher(word, shift)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    word.each_char.with_index do |char, x|
        if alpha.include?(char)
            word[x] = alpha[(alpha.index(char) + shift) % 26]
        end
    end
end
        
        




