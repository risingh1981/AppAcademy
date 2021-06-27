
def select_even_nums(array)
    # array.select { |num| num.even?} # Can also do it the way below.
    array.select(&:even?)
end

#print select_even_nums([7, 3, 2, 5, 12])
#puts
#[2, 12]
#print select_even_nums([20, 40, 31])
#puts
#[20, 40]
#print select_even_nums([1, 2017])
#puts
#[]


def reject_puppies(array)
    #array.reject { |hash| hash["age"]<=2}
end


# dogs = [
#        {"name"=>"Fido", "age"=>3},
#        {"name"=>"Spot", "age"=>2},
#        {"name"=>"Rex", "age"=>5},
#        {"name"=>"Gizmo", "age"=>1}
#      ]

#print reject_puppies(dogs)
#puts
#[{"name"=>"Fido", "age"=> 3}, {"name"=>"Rex", "age"=>5}]

def count_positive_subarrays(array)
    array.count { |subarray| subarray.sum > 0}
end


#array_1 = [
#        [-2, 5],
#        [1, -9, 1],
#        [4, 7]
#      ]
#print count_positive_subarrays(array_1)
#(2)

#array_2 = [
#        [4],
#        [-20, 1, 3],
#        [4, -5],
#        [-1000, 1000, -1, 1]
#      ]
#puts
#print count_positive_subarrays(array_2)
#(1)

def aba_translate(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
    end
    new_word
end

#"should transform the word by putting a 'b' after every vowel and adding that same vowel" do
#print aba_translate("cats")
#puts
#"cabats"
#print aba_translate("dog")
#puts
#"dobog"
#print aba_translate("kite")
#puts
#"kibitebe"
#print aba_translate("afrika")
#puts
#"abafribikaba"
#print aba_translate("fly")
#puts
#"fly"

def aba_array(array)
    array.map { |item| aba_translate(item) }
end

#"should return a new array where every word has been 'aba translated'" 
#print aba_array(["cat", "dog", "butterfly"])
#puts
#["cabat", "dobog", "bubutteberfly"]
#print aba_array(["fly", "kite"])
#puts
#["fly", "kibitebe"]