def summation_sequence(start, length)
	array = [start]
  	(2..length).each do |i|
      array << sum(array[-1])
    end
  	return array
end

def sum(num)
  sum = 0
  (1..num).each do |i|
    sum += i
  end
  
  return sum
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]