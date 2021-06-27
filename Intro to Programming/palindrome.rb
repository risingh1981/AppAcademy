def is_palindrome(word)
    i = 0
    len = word.length - 1 
    test = true
    while i < word.length/2
      if word[i] != word[len]
        test = false
        break
      end
      i +=1
      len -= 1
    end
    return test
end
  
puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false