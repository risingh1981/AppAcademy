def palindrome?(string)
    palindrome = true
    i = 0
    while i < (string.length - 1) / 2.0
        if string[i] != string[string.length - 1 - i]
            palindrome = false
            break
        end
        i += 1
    end

    palindrome
end
        #puts palindrome?("aa")
        #puts palindrome?("tot")
        #true
        #puts palindrome?("racecar")
        #true
        #puts palindrome?("madam")
        #true
        #puts palindrome?("aa")
        #true
        #puts palindrome?("a")
        #true
        #puts palindrome?("cat")
        #false
        #puts palindrome?("greek")
        #false
        #puts palindrome?("xabcx")
        #false

def substrings(string)
    substring = []

    (0...string.length).each do |i|
        (i...string.length).each do |j|
            substring << string[i..j]
        end
    end

    substring
end

# print substrings("jump")
#["j", "ju", "jum", "jump", "u", "um", "ump", "m", "mp", "p"]
# print substrings("abc")
#["a", "ab", "abc", "b", "bc", "c"]
# print substrings("x")
#["x"]

def palindrome_substrings(string)

    subArray = substrings(string)

    ps = subArray.select do |sub| 
        palindrome?(sub) && sub.length > 2
    end

    ps 
end

#print palindrome_substrings("abracadabra")
#["aca", "ada"]
#puts
#print palindrome_substrings("madam")
# ["madam", "ada"]
#puts
#print palindrome_substrings("taco")
# []





print palindrome?("ab")