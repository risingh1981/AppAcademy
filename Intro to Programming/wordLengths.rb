def word_lengths(sentence)
    hash = {}

  arr = sentence.split(" ")

    arr.each do |word|
    hash[word] = word.length
  end
    print hash
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}