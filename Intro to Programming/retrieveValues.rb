def retrieve_values(hash1, hash2, key)
	arr = []
  	
	arr << hash1[key]
  	arr << hash2[key]
  
  	return arr 	
end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts