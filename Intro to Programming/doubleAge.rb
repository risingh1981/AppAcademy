def get_double_age(hash)
  
    return 2 * hash["age"]
end
  
puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})    