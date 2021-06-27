def opposite_count(nums)
    count = 0
    nums.each do |num1|
      nums.each do |num2|
        if num1 + num2 == 0
          count += 1
          # puts num1," ", num2
        end
      end
    end
    return count/2
end
  
puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1