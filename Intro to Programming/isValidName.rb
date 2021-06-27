# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#


def is_valid_name(str)
	parts = str.split(" ")
  	if parts.length < 2
  	    return false
   	end
  
  parts.each do |part|
  	if !is_caps(part)
    	return false    
 	 end
  end
  
  return true
end

def is_caps(part)
  if (part[0] != part[0].upcase || part[1..-1] != part[1..-1].downcase)
    return false
  else
    return true
  end
end
  
puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false