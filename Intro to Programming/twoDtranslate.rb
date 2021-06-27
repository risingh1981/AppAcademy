def two_d_translate(arr)
    newArr = []
    arr.each do |subArray|
      subArray[1].times { newArr << subArray[0] }
    end
  
    return newArr
end
  
arr_1 = [
['boot', 3],
['camp', 2],
['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
['red', 1],
['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts