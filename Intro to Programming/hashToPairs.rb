def hash_to_pairs(hash)

    arr = []
    hash.each do |k,v|
        arr << [k,v]
    end
    return arr
end
  
  
print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts