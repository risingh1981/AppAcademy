def triple_sequence(start, length)
  
    arr = [start]
    
    i = 1
    
    while i<length
      arr[i] = arr[i-1]*3
      i += 1
    end
    
    print arr  
end
  
print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts