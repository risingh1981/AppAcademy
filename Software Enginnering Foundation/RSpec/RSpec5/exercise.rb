def zip(*arrays)
    length = arrays.first.length
    y = []
    (0...length).map do |i|
         y = arrays.map { |array| array[i] }
    end
    # p final_arr
   
end


def prizz_proc(arr, prc1, prc2)
    # new_arr = []
    arr.select do |el|
        prc1.call(el) ^ prc2.call(el)
    
    end
    
end


# div_3 = Proc.new { |n| n % 3 == 0 } 
# div_5 = Proc.new { |n| n % 5 == 0 } 
# ends_ly = Proc.new { |s| s.end_with?('ly') } 
#has_i = Proc.new { |s| s.include?('i') }

# print prizz_proc([10, 9, 3, 45, 12, 15, 7],div_3,div_5)
# ([10, 9, 3, 12])


def zany_zip(*arrays)
    length = arrays.map(&:length).max
    
    (0...length).map do |i|
          arrays.map { |array| array[i] }
    end
end

#array_1 = ["a","b","c"]
#array_2 = [1,2,3]
#array_3 = [11,13,15,17]
#array_4 = ["v","w","x","y"]
#print zany_zip(array_1, array_2, array_3, array_4)
# [
#            ["a", 1,    11,     "v"],
#            ["b", 2,    13,     "w"],
#            ["c", 3,    15,     "x"],
#            [nil, nil,  17,     "y"],
#            [nil, nil,  nil,    "z"]
#        ]

def maximum(arr, &prc)

    return nil if arr.length == 0
    max = 0
    max_idx = nil
    arr.each_with_index do |ele, idx|
        if prc.call(ele) >= max
            max = prc.call(ele)
            max_idx = idx
        end
    end
    arr[max_idx]
end

def maximum2(arr, &prc)
    max = arr.first
    arr.each do |ele|
        max = ele if prc.call(ele)>=prc.call(max)
    end
    max
end

#print maximum2([2, 4, -5, 1]) { |n| n * n }
#puts
#(-5)
#print maximum2(['potato', 'swimming', 'cat']) { |w| w.length }
#puts
#('swimming')
#print maximum2(['boot', 'cat', 'drop']) { |w| w.length }
#puts
# ('drop')

def my_group_by(arr, &prc)
    new_hash = Hash.new { |h,k| h[k] = []}

    arr.each do |ele|
        new_hash[prc.call(ele)] << ele
    end
    new_hash
end


#array_1 =['mouse', 'dog', 'goat', 'bird', 'cat'] 
#array_2=[1, 2, 9, 30, 11, 38] 
#    answer_1 = {5=>["mouse"], 3=>["dog", "cat"], 4=>["goat", "bird"]}
#    print my_group_by(array_1) { |s| s.length }
    #(answer_1.keys)
#    puts

#    answer_2 = {true=>["mouse", "dog", "goat"], false=>["bird", "cat"]}
#    print my_group_by(array_1) { |s| s.include?('o') }
    # (answer_2.keys)
#    puts
    

#    answer_1 = {5=>["mouse"], 3=>["dog", "cat"], 4=>["goat", "bird"]}
#    print my_group_by(array_1) { |s| s.length }
    # (answer_1)
#    puts

#    answer_2 = {true=>["mouse", "dog", "goat"], false=>["bird", "cat"]}
#    print my_group_by(array_1) { |s| s.include?('o') }
    # (answer_2)
#    puts

#    answer_3 = {1=>[1], 2=>[2, 11, 38], 0=>[9, 30]}
#    print my_group_by(array_2) { |n| n % 3 }
    # (answer_3)
#    puts


def max_tie_breaker(array, tie_breaker, &prc)
        return nil if array.empty?

        max = array.first

        array.each do |ele|
            result_el = prc.call(ele)
            result_max = prc.call(max)
            if result_el > result_max
                max = ele
            elsif result_el == result_max && tie_breaker.call(ele) > tie_breaker.call(max)
                max = ele
            end
        end

        max
end




# array_1 =['potato', 'swimming', 'cat'] 
# array_2 = ['cat', 'bootcamp', 'swimming', 'ooooo']
# array_3 = ['photo','bottle', 'bother'] 
# length = Proc.new { |s| s.length } 
# o_count = Proc.new { |s| s.count('o') }

        

# print max_tie_breaker(array_1, o_count, &length)
#('swimming')
# puts
# print max_tie_breaker(array_2, length, &o_count)
#('ooooo')
# puts


def silly_syllables(sentence)
    arr = sentence.split(" ")

    new_arr = arr.map do |word|
        modify(word)
    end

    new_arr.join(" ")
end

def first_vowel(word)
    vowels = "aeiou"
    word.each_char.with_index do |char,idx|
        if vowels.include?(char)
            return idx
        end
    end
    return nil
end

def last_vowel(word)
    vowels = "aeiou"
    arr = word.split("")
    arr.reverse.each_with_index do |char,idx|
        
        if vowels.include?(char)
            return word.length - idx - 1
        end
    end

    return nil
end

def modify(word)
    if first_vowel(word) == last_vowel(word) 
        return word
    end
    word[first_vowel(word)..last_vowel(word)]
end

# print silly_syllables("the trashcans collect all my garbage")
#('the ashca olle all my arbage'