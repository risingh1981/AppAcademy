# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
    arr1 = factors(num_1)
    arr2 = factors(num_2)
    final = arr1 & arr2 # & is the intersection of two arrays.
    if final.length != 0
        return false
    else
        return true
    end
end
# Factor method returns an array with all the factors of a given number.
def factors(num)
    arr = []
    (2..num).each do |ele|
        if (num % ele == 0)
            arr << ele
        end
    end
    return arr
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
