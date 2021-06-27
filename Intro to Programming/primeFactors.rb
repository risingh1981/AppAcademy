def prime_factors(num)
	primefactors = (2...num).select do |ele|
 		 num % ele == 0 && is_prime(ele)
	end

	return primefactors
end

def is_prime(num)
  if num < 2
    return false
  end
    
  (2...num).each do |ele| 
    if num % ele == 0
		return false
    end
  end
  
  return true
end
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts