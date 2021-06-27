# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
	pyramid = [base]	
      
  while pyramid.length < base.length
    prev_level = pyramid[0]
    next_level = adjacent_sum(prev_level)
    pyramid.unshift(next_level)
  end
  
  return pyramid
end

def adjacent_sum(array)
  new_array = []
  array.each_with_index do |num, i|
    if i != array.length - 1
      new_array << array[i] + array[i+1]
    end
  end
  
  return new_array
  
end

#print adjacent_sum([1,4,6])
print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
#puts
 
#print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
#puts