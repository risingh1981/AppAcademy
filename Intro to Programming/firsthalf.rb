def first_half(array)
    new_arr = []
    
    if array.length % 2 == 0
      len = array.length/2 - 1
    else
      len = array.length/2
    end
    
    i = 0
    while i <= len
      new_arr << array[i]
      i += 1
    end
    return new_arr
end
  
print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])  