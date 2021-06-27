# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
    hash = Hash.new(0)
    arr.each do |ele|
      hash[ele] += 1
    end
  
    newArr = []
    hash.each do |k,v|
      newArr << k
    end
      
    return newArr
end
  
print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts