def all_words_capitalized?(array)
    array.all? { |word| capitalized(word)}
end

def capitalized(word)
    bool = true
    word.each_char.with_index do |char,i|
        if i == 0
            if char != char.upcase
                bool = false
            end
        else
            if char != char.downcase
                bool = false
            end
        end
    end
    bool
end





#print all_words_capitalized?(["Hello", "World"])
#puts
#(true)
#print all_words_capitalized?(["Follow", "The", "Yellow", "Brick", "Road"])
#puts
#(true)

#print all_words_capitalized?(["hello", "world"])
#puts
#(false)
#print all_words_capitalized?(["Hello", "WORLD"])
#puts
#(false)
#print all_words_capitalized?(["Follow", "the", "Yellow", "Brick", "Road"])
#puts
#(false)

def no_valid_url?(array)
    array.none? do |url|
        url.end_with?(".com",".net",".io",".org")
    end
end

      
# "when none of the urls end in '.com', '.net', '.io', or '.org'"
#print no_valid_url?(["appacademy.biz", "awebsite.me"])
#puts
#(true)
#print no_valid_url?(["computernetwork.co"])
#puts
#(true)
# "when at least one of the urls end in '.com', '.net', '.io', or '.org'"
#print no_valid_url?(["appacademy.io", "sennacy.com", "heyprogrammers.org"])
#puts
#(false)
#print no_valid_url?(["appacademy.biz", "sennacy.com"])
#puts
#(false)


def any_passing_students?(array)
    array.any? do |student|
        average = student[:grades].sum/student[:grades].length.to_f
        if average >= 75
            true
        else 
            false
        end
    end
end

# "when at least one student has an average grade of 75 or higher" return true
#students_1 = [
#        { name: "Alvin", grades: [70, 50, 75] },
#        { name: "Warlin", grades: [80, 99, 95] },
#        { name: "Vlad", grades: [100] },
#      ]
#print any_passing_students?(students_1)
#(true)
#puts

#students_2 = [
#        { name: "Alice", grades: [94, 96] },
#        { name: "Bob", grades: [50, 60] }
#      ]
#print any_passing_students?(students_2)
#(true)        
#puts

#"when no student has an average grade of 75 or higher" return false
  
#students = [
#        { name: "Alice", grades: [60, 68] },
#        { name: "Bob", grades: [20, 100] }
#      ]

#print any_passing_students?(students)
#puts
#(false)
      

