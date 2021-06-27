def fibonacci(length)
    arr = []
    if length == 0
      return arr
    elsif length == 1
      return [1]
    end
    
    arr = [1,1]
    while arr.length < length
      last_ele = arr[-1]
      lastlast_ele = arr[-2]
      arr << last_ele + lastlast_ele
    end
    
    return arr
end
  
print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts