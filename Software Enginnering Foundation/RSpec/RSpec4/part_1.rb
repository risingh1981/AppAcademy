def my_reject(arr, &prc)
    new_arr = []
    arr.each do |ele|
       new_arr << ele if !prc.call(ele)
    end
    new_arr
end

#print my_reject([-3, 5, 0, 8]) { |n| n > 0 }
#puts
# print my_reject([7, 6, 5, 4]) { |n| n.even? }

def my_one?(arr, &prc)
    count = 0
    arr. each do |x|
        if prc.call(x)
            count += 1
        end
    end

    if count == 1
        return true
    else 
        return false
    end

    
    # or much simpler way is
    # arr.count(prc.call) == 1
end

# print my_one?([5, 10, 7, 3]) { |n| n.even? } 
#puts
# print my_one?([8, 10, 7, 3]) { |n| n.even? } 
# puts
# print my_one?(["a", "x", "c", "x"]) { |char| char == "x" } 
# false)
# puts
# print my_one?(["a", "b", "c", "d"]) { |char| char == "x" } 
# puts
# false

def hash_select(hash, &prc)
    new_hash = Hash.new

    hash.each do |k,v|
        if prc.call(k,v)
            new_hash[k] = v
        end
    end

    new_hash
end

# print hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| "aeiou".include?(k) }
# {"a"=>0, "o"=>14}
# puts
p# print hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| v.even? }
# {"a"=>0, "c"=> 2, "o"=>14}

def xor_select(arr, prc1, prc2)

    new_arr = []
    arr.each do |x|
        if prc1.call(x) ^ prc2.call(x)
            new_arr << x
        end
    end
    new_arr
end


#even = Proc.new { |n| n.even? }
#positive = Proc.new { |n| n > 0 }

#print xor_select([2, 5, 3, 7, 6, -8, -1], even, positive)
# ([5, 3, 7, -8])

def proc_count(val, arr)
    count = 0
    arr.each do |prc|
        if prc.call(val)
            count += 1
        end
    end
    count
end


# even = Proc.new { |n| n.even? }
#div_by_5 = Proc.new { |n| n % 5 == 0 }
#positive = Proc.new { |n| n > 0 }
#print proc_count(12, [even, div_by_5, positive])
#(2)
#puts
#print proc_count(-4, [even, div_by_5, positive])
# (1)


