# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def counts(hash,word)
    vowels = "aeuoi"

    word.each_char do |char|
        if vowels.include?(char)
            hash[char] += 1
        end
    end
    hash
end


# determines if all vowels appear in hash
def all_vowels?(hash)
    vowels = "aeiou"
    vowels.each_char.all? { |char| hash[char]>0}
end

def all_vowel_pairs(words)
    pairs = []
    
    (0...words.length).each do |i|
        vowel_count = Hash.new(0)
        vowel_count = counts(vowel_count, words[i])

        (i...words.length).each do |j|
            vowel_count = counts(vowel_count, words[j])
            if all_vowels?(vowel_count)
                pairs << words[i] + " " + words[j]
            end
            vowel_count = Hash.new(0)
            vowel_count = counts(vowel_count, words[i])
        end
    end
    pairs
end

# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
    (2...num).each.any? { |ele| num % ele == 0}
end

puts composite?(9)
#(true)
puts composite?(12)
# (true)
puts composite?(4)
# (true)
puts composite?(7)
# (false)
puts composite?(13)
# (false)
puts composite?(31)
# (false)


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
    list = []
    bigrams.each do |bigram|
        if str.include? bigram
            list << bigram
        end
    end
    list
end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)
        # new_hash = Hash.new(0)
        if prc == nil
            self.select { |k,v| self[k] == k }
        else 
            self.select { |k, v| prc.call(k,v) }
        end
    end
end




class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
        subs = []
        (0...self.length).each do |s|
            (s...self.length).each do |e|
                subs << self[s..e]
            end
        end
        if length == nil
            subs
        else
            subs.select { |x| x.length ==length}
        end
    end

    


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        alpha = "abcdefghijklmnopqrstuvwxyz"

        new_array = self.chars.map do |char|
            idx = alpha.index(char)
            new_idx = (idx + num) % 26
            alpha[new_idx]
        end

        new_array.join("")

    end
end