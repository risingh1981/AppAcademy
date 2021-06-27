# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0
            return nil
        end
        self.max - self.min 
    end

    def average
        if self.length == 0
            return nil
        end
        self.sum/self.length.to_f
    end

    def median
        if self.length == 0
            nil
        elsif self.length % 2 == 1
            self.sort[(self.length - 1)/2]
        else
            sorted = self.sort
            (sorted[self.length/2] + sorted[(self.length/2) - 1]) / 2.0
        end
    end

    def counts
        hash = Hash.new(0)

        self.each do |item|
            hash[item] +=1
        end

        hash
    end
      
    def my_count(item)
        hash = self.counts
        hash[item]
    end

    def my_index(item)
        self.each_with_index do |x, idx|
            if x == item
                return idx
            end
        end

        return nil
    end

    def my_uniq
        new_arr = []
        self.each do |x|
            if !new_arr.include?(x)
                new_arr << x
            end
        end
        new_arr
    end

    def my_transpose
        (0...self.length).each do |i|
            (i...self.length).each do |j|
                self[i][j], self[j][i] = self[j][i],self[i][j]
            end
        end
        self
    end
end

# Testing Array#span
# puts [12, 24, 23, 11, 17].span
# 13
# puts [13, 10].span
#  3
# puts [12].span
# 0
#puts [].span
# nil
# Testing Array#average
#puts [4, 7, 13, 5].average
# 7.25
#puts [5, 11].average
# 8
#puts [].average
# nil

## Testing Array#median
# "when there is an odd number of elements" 
# "should return the middle element of the array when sorted"
#puts [5, 0, 2, 6, 11, 10, 9].median
# 6
#puts [5, 10, 9].median
# 9
# "when there is an even number of elements" 
# "should return the average of the two middle elements when sorted" 
#puts [3, 8, 4, 5].median
# 4.5
#puts [10, 23].median
# 16.5
# "when the array is empty" 
# "should return nil" 
#puts [].median
# nil

## Testing Array#counts
# "should return a hash representing the count of each element of the array" 
#print ["a", "b", "a", "b", "b", "c"].counts
# {"a"=>2, "b"=>3, "c"=>1}
#puts
# print [].counts
#  {}
#puts

## Part 2
# "#my_count"
# "should accept any value as an argument and return the number of times that value appears in the array" 
puts ["a", "b", "a", "a", "b"].my_count("a")
# 3
puts ["a", "b", "b", "b", "b"].my_count("b")
# 4
puts ["a", "b"].my_count("c")
# 0

# "#my_index" do
# "should accept any value as an argument and return the index where that element is found in the array" 
puts ["a", "b", "c", "d"].my_index("c")
# 2
puts ["a", "b", "c", "d"].my_index("a")
#  0

# "when the value appears multiple times in the array" 
# "should return the smallest index where it is found" do
puts ["a", "b", "c", "a", "b"].my_index("b")
# 1
puts ["a", "b", "c", "a", "b"].my_index("a")
# 0
 
#"when the value does not appear in the array" 
# "should return nil"
puts ["a", "b", "c"].my_index("z")
# nil
 
# "#my_uniq" do
# "should return a new array without duplicate elements in the order they first appeared in the original array" 
print ["a", "b", "a", "a", "b"].my_uniq
# ["a", "b"]
puts
print [4, 1, 1, 3].my_uniq
# [4, 1, 3]
puts

# my_transpose
arr_1 = [
          ["a", "b", "c"],
          ["d", "e", "f"],
          ["g", "h", "i"]
        ]
expected_1 = [
          ["a", "d", "g"],
          ["b", "e", "h"],
          ["c", "f", "i"]
        ]
puts arr_1.my_transpose ==  expected_1
# true
puts
arr_2 = [
    ["w", "x"],
    ["y", "z"]
  ]
  expected_2 = [
    ["w", "y"],
    ["x", "z"]
  ]
puts arr_2.my_transpose == expected_2
# true
