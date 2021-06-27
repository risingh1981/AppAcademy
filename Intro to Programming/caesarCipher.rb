# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    word = ""
    
    str.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = (old_idx + num) % 26
      new_char = alphabet[new_idx]
      word += new_char
    end
    
    return word
end
  
puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"