# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def largest_prime_factor(num)

    num.downto(2) do |i|
        if num % i == 0 && prime?(i)
            return i
        end
    end
end

#print largest_prime_factor(15)
#(5)
#puts
#print largest_prime_factor(7)
#(7)
#puts
#print largest_prime_factor(24)
#(3)
#puts 
#print largest_prime_factor(2)
#(2)

def unique_chars?(string)
    hash = Hash.new(0)
    string.each_char do |char|
        hash[char] +=1
    end
    # hash.select { |key, value| block } returns an array with key,value pairs
    array = hash.select { |key,value| value > 1}
    if array.length > 0
        return false
    else
        return true
    end

end

#print unique_chars?("computer")
#puts
#(true)
#print unique_chars?("dog")
#puts
# (true)
#print unique_chars?("bicycle")
#puts
#(false)
#print unique_chars?("program")
#puts
#(false)
#print unique_chars?("mississppi")
#puts
#(false)

def dupe_indices(array)
    #ht = Hash.new {|h,k| h[k]=[]}
    #ht["cats"] << "Jellicle"
    #ht["cats"] << "Mr. Mistoffelees"
    hash = Hash.new { |h,k| h[k]=[] }
    array.each_with_index do |char, i|
        hash[char] << i
    end
    
    # puts "Hash b select form : #{b.select{|key, value| value < 200}}\n\n
    hash.select{ |k,v| v.length > 1}


end


#print dupe_indices(["a", "b", "c", "c", "b"])
#puts
#{"b"=>[1,4], "c"=>[2,3]}
#print dupe_indices(["a", "a", "c", "c", "b", "c"])
#puts
#{"a"=>[0,1], "c"=>[2,3,5]}
#print dupe_indices(["a", "b", "c"])
#puts
#{}

def bubblesort(array)
    sorted = false

    while !sorted
        sorted = true
        (0...array.length-1).each do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                sorted = false
            end
        end
    end
    array
end

def ana_array(array1, array2)
    if bubblesort(array1) == bubblesort(array2)
        return true
    else
        return false
    end
end



#print ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"]) 
#puts
#(true)
#print ana_array(["cat", "dog", "cat"], ["dog", "cat", "cat"])
#puts
# (true)
#print ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])
#puts
#(false)
#print ana_array(["cat"], ["cat", "dog"])
#puts 
# (false)
#print ana_array(["cat", "dog"], ["cat"])
#puts
# (false)