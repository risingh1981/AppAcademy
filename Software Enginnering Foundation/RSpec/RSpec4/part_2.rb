def proper_factors(num)
    factors = []
    (1...num).each do |x|
        if num % x == 0
            factors << x
        end
    end

    factors
end

#print proper_factors(6)
 #[1,2,3])
 #puts
 #print proper_factors(12)
 # [1,2,3,4,6])
 #puts
# print proper_factors(9)
# 1,3]

def aliquot_sum(num)
    proper_factors(num).sum
end


# print aliquot_sum(6)
 #(6)
# puts
#print aliquot_sum(12)
# puts
#(16)
# print aliquot_sum(9)
# (4)

def perfect_number?(num)
    num == aliquot_sum(num)
end

# puts perfect_number?(6)
# (true)
# puts perfect_number?(28)
 #(true)
# puts perfect_number?(12)
#false)
# puts perfect_number?(9)
# false)


def ideal_numbers(num)
    count = 0
    arr = []
    i = 1
    while count < num
        if perfect_number?(i)
            arr << i 
            count += 1
        end
        i += 1
    end
    arr
end

# print ideal_numbers(2)
# puts
# [6, 28])
# print ideal_numbers(3)
# puts
# [6, 28, 496]