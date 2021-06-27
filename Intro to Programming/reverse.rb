def reverse(word)
    rev = ""
    i = word.length - 1
    while i >= 0
      rev = rev + word[i]
      i -= 1
    end
    
    return rev
end
  
puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"