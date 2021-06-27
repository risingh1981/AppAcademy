def count_e(word)
    count = 0
    numE = 0
    while count < word.length
      if word[count] == "e"
        numE += 1;
      end
      count += 1
    end
    return numE
end
  
puts count_e("movie") # => 1
puts count_e("excellent") # => 3