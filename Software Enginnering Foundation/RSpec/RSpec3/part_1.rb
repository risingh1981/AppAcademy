def is_prime?(num)
    if num < 2
        return false
    end

    (2...num).each do |x|
        if num % x == 0
            return false
        end
    end

    true
end

def nth_prime(n)

    count = 0
    i = 2
    while count < n
        if is_prime?(i)
            count += 1
            i += 1
        else
            i += 1
        end
    end

    return i - 1

end

# print nth_prime(300)

def prime_range(min,max)
    arr = []
    (min..max).each do |x|
        arr << x if is_prime?(x)
    end
    arr
end


# print prime_range(-10, 1)