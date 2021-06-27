def partition(array, num)
    #new_array = [[],[]]

    #array.each do |x|
    #    if x < num
    #        new_array[0] << x
    #    else
    #        new_array[1] << x
    #    end
    #end

    #return new_array
    # Can also be doing using #partition ie.
    # (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
    array.partition { |x| x < num}

end

#print partition([11, 5, 13, 2, 3], 7)
#print partition([1, 2, 4, 3, 5, 7], 5)
#print partition([1, 2, 4, 3], 0)

def merge(hash1, hash2)
    hash = Hash.new()
    hash1.each do |k,v|
        hash[k] = v
    end
    hash2.each do |k,v|
        hash[k] = v
    end
    return hash

end

      # hash_1 = {"a"=>10, "b"=>20}
      # hash_2 = {"c"=>30, "d"=>40, "e"=>50}
      # print merge(hash_1, hash_2)
      # {"a"=>10, "b"=>20, "c"=>30, "d"=>40, "e"=>50}
      # hash_1 = {"a"=>10, "b"=>20}
      # hash_2 = {"c"=>30, "b"=>7}
      # print merge(hash_1, hash_2)
      #{"a"=>10, "b"=>7, "c"=>30})

def censor(sentence,curse)
    words = sentence.split(" ")
    withoutcaps = sentence.downcase.split(" ")

    withoutcaps.each_with_index do |word,index|
        if curse.include?(word)
            word.each_char.with_index do |char,i|
                if ("aeiou").include?(char)
                    words[index][i] = "*"
                elsif
                    ("AEIOU").include?(char)
                    words[index][i] = "*"
                end
            end
        end
    end
    words.join(" ")
end

# print censor("Gosh darn it", ["gosh", "darn", "shoot"])
#"G*sh d*rn it"
# print censor("SHUT THE FRONT DOOR", ["door"])
#"SHUT THE FRONT D**R")

def power_of_two?(num)
    
    product = 1
    bool = false
    while product <= num
        if product == num
            bool = true
            break
        end
        product *= 2
    end
    bool
end

 #print power_of_two?(16)
 # true
 #puts
 #print power_of_two?(32)
 #true
 #puts
 #print power_of_two?(64)
 # true
 #puts
 #print power_of_two?(1)
 #true
 #puts
 #print power_of_two?(6)
 #false
#puts
#print power_of_two?(7)
#false
#puts
#print power_of_two?(100)
#false



