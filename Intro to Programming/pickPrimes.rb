def pick_primes(numbers)
  
    primes = numbers.select { |num| is_prime(num) }
      
    return primes
end
  
# is_prime returns true is prime, false if not prime
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
  
  
print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts