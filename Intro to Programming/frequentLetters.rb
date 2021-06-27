def frequent_letters(string)
	hash = Hash.new(0)
  
  	string.each_char do |char|
      hash[char] += 1
    end
  	
  
  	frequents = []
  	hash.each do |char, count|
      if count > 2
        frequents << char
      end
    end
  return frequents
  	
  
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts