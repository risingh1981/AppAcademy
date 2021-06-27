def even_nums(max)
    new_arr = []
    i = 0
    while i <= max
      if i % 2 == 0
        new_arr << i
      end
      i +=1
    end
    return new_arr
end
  
print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]