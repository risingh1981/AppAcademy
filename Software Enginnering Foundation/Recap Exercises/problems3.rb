# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing 
# the elements that were not repeated in the array.

def no_dupes?(arr)
    new_hash = Hash.new(0)
    new_arr = []

    arr.each do |x|
        new_hash[x] += 1
    end

    new_hash.each do |k,v|
        if v == 1
            new_arr << k
        end
    end
    new_arr
end

#print no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
#puts
#print no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
#puts
#print no_dupes?([true, true, true])            # => []

# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg. The method should return 
# true if an element never appears consecutively in the array; it should return false otherwise.

def no_consecutive_repeats?(arr)
    no_repeats = true
    arr.each_with_index do |ele,idx|
        if idx <= arr.length - 2
            if arr[idx] == arr[idx+1]
                no_repeats = false
            end
        end
    end
    no_repeats
end

#puts no_consecutive_repeats?([1,2,3,4,5,6]) # true
#puts no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
#puts no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
#puts no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
#puts no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
#puts no_consecutive_repeats?(['x'])                              # => true


# Write a method char_indices(str) that takes in a string as an arg. The method should return a hash 
# containing characters as keys. The value associated with each key should be an array containing the 
# indices where that character is found.
def char_indices(str)
    letters = Hash.new([])

    str.each_char.with_index do |char, i|
        letters[char] += [i]
    end

    letters
end

# print char_indices("apple")
# puts
# print char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# puts
# print char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}


# Write a method longest_streak(str) that accepts a string as an arg. The method should return the longest 
# streak of consecutive characters in the string. If there are any ties, return the streak that 
# occurs later in the string.
def longest_streak(str)
    streaks = Hash.new([0]) # will store letter as key and array will have two elements, second for index of 
                           # letter where streak starts, and first length of streak 
    i = 0


    while i <= str.length - 1
        count = 1
        while str[i] == str[i+1]
            count += 1
            i += 1
        end
        if streaks[str[i]][0] < count
            streaks[str[i]][0] = count
            streaks[str[i]][1] =  i
        end
        i += 1
    end
    print streaks
end

def longest_streak1(str)
    current_streak = ''
    best_streak = ''

    (0...str.length).each do |idx|
        
        if str[idx] == str[idx - 1] || idx == 0
            current_streak += str[idx]
        else
            current_streak = str[idx]
        end

        best_streak = current_streak if current_streak.length >= best_streak.length
    end

    best_streak
end

#print longest_streak1("aabbbcccddddbbbb")

#print longest_streak1('a')           # => 'a'
#puts
#print longest_streak1('accccbbb')    # => 'cccc'
#puts
#print longest_streak1('aaaxyyyyyzz') # => 'yyyyy
#puts
#print longest_streak1('aaabbb')      # => 'bbb'

#puts 
#print longest_streak1('abc')         # => 'c'

# Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether 
# or not the number is a bi-prime. A bi-prime is a positive integer that can be obtained by multiplying 
# two prime numbers.
def bi_prime?(num)
    factors = factors(num)

    factors.each do |subarray|
        if is_prime?(subarray[0]) && is_prime?(subarray[1])
            return true
        end
    end

    false
end

# returns an array or 1x2 arrays consisting of factors of a number
def factors(num)
    array = []
    (1..num).each do |x|
        if num % x == 0
            array << [x, num/x]
        end
    end
    array
end

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

#print bi_prime?(14)   # => true
#puts
#print bi_prime?(22)   # => true
#puts
#print bi_prime?(25)   # => true
#puts
#print bi_prime?(94)   # => true
#puts
#print bi_prime?(24)   # => false
#puts
#print bi_prime?(64)   # => false


# Write a method vigenere_cipher(message, keys) that accepts a string and a key-sequence as args,
# returning the encrypted message. Assume that the message consists of only lowercase alphabetic characters.

def vigenere_cipher(message, keys)
    key_idx = 0
    new_message = ""
    message.each_char do |char|
        new_message += cipher(char, keys[key_idx])
        key_idx = (key_idx + 1) % keys.length
    end

    new_message
end

# returns new char after applying key position shifts to it
def cipher(char, key)
    alpha = ("a".."z").to_a
    idx = alpha.index(char)
    new_idx = (idx + key) % 26
    alpha[new_idx]
end

# print vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# puts
# print vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# puts
# print vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
#puts
# print vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# puts
# print vigenere_cipher("yawn", [5, 1])             # => "dbbo"


# Write a method vowel_rotate(str) that accepts a string as an arg and returns the string where every vowel 
# is replaced with the vowel the appears before it sequentially in the original string. The first vowel of 
# the string should be replaced with the last vowel.

def vowel_rotate(str)
    arr_of_vowels = vowels(str)
    idx = 0
    new_str = ""
    vowels = "aeiou"
    str.each_char do |char|
        if vowels.include?(char)
            new_str += arr_of_vowels[(idx - 1) % arr_of_vowels.length]
            idx +=1
        else
            new_str += char
        end
    end
    new_str
end

# returns array of vowels in string in order
def vowels(str)
    arr_of_vowels = []
    vowels = "aeiou"
    str.each_char do |char|
        if vowels.include?(char)
            arr_of_vowels << char
        end
    end
    arr_of_vowels
end

#print vowel_rotate("computer")      # => "cempotur"
#puts
#print vowel_rotate('oranges')       # => "erongas"
#puts
#print vowel_rotate('headphones')    # => "heedphanos"
#puts
#print vowel_rotate('bootcamp')      # => "baotcomp"
#puts
#print vowel_rotate('awesome')       # => "ewasemo"


class String

    def select(&prc)
        new_str = ""
        if prc == nil
            return ""
        end

        self.each_char do |char|
            if prc.call(char)
                new_str += char
            end
        end
        new_str
    end


# print ("app academy").select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
# puts
# print ("HELLOworld").select { |ch| ch == ch.upcase }          # => "HELLO"
# puts
# print ("HELLOworld").select          # => ""


# Extend the string class by defining a String#map! method that accepts a block. The method should modify 
# the existing string by replacing every character with the result of calling the block, passing in the 
# original character and it's index. Do not use the built-in Array#map or Array#map! in your solution.

    def map!(&prc)
        self.each_char.with_index do |char, i|
            self[i] = prc.call(char,i)
        end
    end
end

# Write a method multiply(a, b) that takes in two numbers and returns their product.

# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator

def multiply(a,b)
    return 0 if b == 0

    if b < 0
        -(a + multiply(a, (-b) - 1))
    else
        a + multiply(a, b - 1)
    end
end

# print multiply(2,3)
#puts multiply(3, 5)        # => 15
#puts multiply(5, 3)        # => 15
#puts multiply(2, 4)        # => 8
#puts multiply(0, 10)       # => 0
#puts multiply(-3, -6)      # => 18
#puts multiply(3, -6)       # => -18
#puts multiply(-3, 6)       # => -18
    
#Write a method lucasSequence that accepts a number representing a length as an arg. The method should 
# return an array containing the Lucas Sequence up to the given length. Solve this recursively.
def lucasSequence(n)
    if n == 0
        return []
    elsif n == 1
        return [2]
    elsif n == 2
        return [2,1]
    end

    seq = lucasSequence(n-1)
    seq << seq[-1] + seq[-2]
    seq
end

# print lucasSequence(6)

# Write a method prime_factorization(num) that accepts a number and returns an array representing the 
# prime factorization of the given number. This means that the array should contain only prime numbers 
# that multiply together to the given num. The array returned should contain numbers in ascending order. 
# Do this recursively.

# prime factorization

def prime_factorization(num)
    (2...num).each do |fact|
        if num % fact == 0
            other_fact = num/fact
            return [*prime_factorization(fact),*prime_factorization(other_fact)]
        end
    end

    return [num]
end

print prime_factorization(24)



        




