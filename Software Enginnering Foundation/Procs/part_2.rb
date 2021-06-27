def reverser(string, &prc)
    prc.call(string.reverse)
end



# "should accept a string and a block as args" 
#reverser("abcd") { |string| string.upcase } 
# to_not raise_error
     
# "should return the result of the block when passed the string with it's characters reversed"
#print reverser("abcd") { |string| string.upcase }
#puts
#"DCBA"
#print reverser("hello") { |string| string + "!!!" }
#puts
#"olleh!!!"

def word_changer(string, &prc)
    words = string.split(" ")
    new_words = []
    words.each do |word|
        new_words << prc.call(word)
    end
    new_words.join(" ")
end

#"should return a new sentence where every word becomes the result of the block when passed the original word of the sentence"
#print word_changer("goodbye moon") { |word| word.upcase + "!" }
#puts
#"GOODBYE! MOON!"
#print word_changer("Hello World") { |word| ".." + word.downcase + ".." }
#puts
#"..hello.. ..world.."

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        prc1.call(num)
    else
        prc2.call(num)
    end
end

#"should return the greater result of the two procs when each is passed the number" 
    times_10 = Proc.new { |n| n * 10 }
    square = Proc.new { |n| n * n }
    negate = Proc.new { |n| n * -1 }

#print greater_proc_value(3, times_10, square)
#puts
#30
#print greater_proc_value(12, times_10, square)
#puts
#144
#print greater_proc_value(-5, times_10, negate)
#puts
# 5

def and_selector(array, prc1, prc2)
    new_array = []
    array.each do |ele|
        if prc1.call(ele) && prc2.call(ele)
            new_array << ele
        end
    end
    new_array
end

# "should return a new array containing 
# elements of the original array that result in true when passed into both procs"
    even = Proc.new { |n| n.even? }
    negative = Proc.new { |n| n < 0 }

# print and_selector([-5, 0, -8, 8, -2], even, negative)
# puts
#[-8, -2]
# print and_selector([5, 4, 10, 15], even, negative)
# puts
#[]


def alternating_mapper(array, prc1, prc2)
    new_array = []
    array.each_with_index do |ele, idx|
        if idx.even? 
            new_array << prc1.call(ele)
        else
            new_array << prc2.call(ele)
        end
    end
    new_array
end

# "should return a new array where all of the elements at even indices are the 
# results when those elements are passed into the first proc and all of the
# elements at odd indices are the results when those elements are passed into 
# the second proc" 
    half = Proc.new { |n| n / 2.0 }
    times_thousand = Proc.new { |n| n * 1000 }
#print alternating_mapper([1,10,4,7,5], half, times_thousand)
# puts
#[0.5, 10000, 2.0, 7000, 2.5]
  