def all_else_equal(arr)

    arr.each do |ele|
      if ele == sum_arr(arr) / 2.0
        return ele
      end
    end
    
    return nil
  end
  
  def sum_arr(arr)
    sum = 0	
    arr.each do |num|
        sum += num
    end
    
    return sum
end
  
#p sum_arr([2, 4, 3, 10, 1])
p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array