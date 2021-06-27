def my_map(array, &prc)
    new_array = []
    array.each do |ele|
        new_array << prc.call(ele)
    end
    new_array
end



#"should accept an array and a block as args" do
#print my_map([1,2,3]) { |n| 2 * n } 
# not raise error
  

# "should return a new array where the elements are the results of the block when passed in each element of the original array" do
#print my_map([1,2,3]) { |n| 2 * n }
#puts
#[2,4,6]
#print my_map(["Hey", "Jude"]) { |word| word + "?" }
#puts
#["Hey?", "Jude?"]
#print my_map([false, true]) { |bool| !bool }
#puts
#[true, false]

def my_select(array, &prc)
    new_array = []
    array.each do |ele|
        if prc.call(ele)
            new_array << ele
        end
    end
    new_array
end

# "should return a new array where the elements are elements of the original array where the block resulted in true" do
#print my_select([1,2,3,8]) { |n| n.even? }
#puts
#[2, 8]
#print my_select([0, 2018, 1994, -7]) { |n| n > 0 }
#puts
#[2018, 1994]
#print my_select([6, 11, 13], &:odd?)
#puts
#[11, 13]


def my_count(array, &prc)
    count = 0
    array.each do |ele|
        if prc.call(ele)
            count += 1
        end
    end
    count
end

#"should return a number representing the count of elements that result in true when passed into the block" do
#print my_count([1,4,3,8]) { |n| n.even? }
#puts
#2
#print my_count(["DANIEL", "JIA", "KRITI", "dave"]) { |s| s == s.upcase }
#puts
#3
#print my_count(["daniel", "jia", "kriti", "dave"]) { |s| s == s.upcase }
#puts
#0

def my_any?(array, &prc)
    bool = false
    array.each do |ele|
        if prc.call(ele) == true
            bool = true
            break
        end
    end
    bool
end


#print my_any?([7, 10, 3, 5]) { |n| n.even? }
#puts
#true
#print my_any?([7, 10, 4, 5]) { |n| n.even? }
#puts
#true
#print my_any?(["q", "r", "s", "i"]) { |char| "aeiou".include?(char) }
#puts
#true

# "when all elements of the array result in false when passed into the block" 
# it "should return false"
#print my_any?([7, 11, 3, 5]) { |n| n.even? }
#puts
#false
#print my_any?(["q", "r", "s", "t"]) { |char| "aeiou".include?(char) }
#puts
#false

def my_all?(array, &prc)
    bool = true
    array.each do |ele|
        if !prc.call(ele)
            bool = false
            break
        end
    end
    bool
end

# "when all elements of the array result in true when passed into the block" 
# "should return true" 
# print my_all?([3, 5, 7, 11]) { |n| n.odd? }
# puts
#true
#print my_all?([-8, -9, -6]) { |n| n < 0 }
#puts
#true
  

#"when at least 1 of the elements of the array result in false when passed into the block" 
# "should return false" 
# print my_all?([3, 5, 8, 11]) { |n| n.odd? }
#puts
#false
#print my_all?([-8, -9, -6, 0]) { |n| n < 0 }
#puts
#false

def my_none?(array, &prc)
    bool = true
    array.each do |ele|
        if prc.call(ele)
            bool = false
            break
        end
    end
    bool
end


# "when none of the elements of the array result in true when passed into the block" 
# "should return true" 
#print my_none?([3, 5, 7, 11]) { |n| n.even? }
# puts
# true
#print my_none?(["sushi", "pizza", "burrito"]) { |word| word[0] == "a" } 
#puts
#true

#"when at least 1 element of the array results in true when passed into the block"     it "should return false" do
#print my_none?([3, 5, 4, 7, 11]) { |n| n.even? } 
#puts
#false
#print my_none?(["asparagus", "sushi", "pizza", "apple", "burrito"]) { |word| word[0] == "a" } 
#puts
#false
