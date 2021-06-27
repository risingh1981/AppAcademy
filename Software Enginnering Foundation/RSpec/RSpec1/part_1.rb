def average(num1,num2)
    avg = (num1 + num2) / 2.0
end

def average_array(arr)
    avg = arr.sum/arr.length.to_f
end

def repeat(str,num)
    rptstr = str*num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    arr = str.split(" ")

    arr1 =arr.map.with_index do |word, i| 
        if i % 2 == 0 
            word.upcase 
        else
            word.downcase
        end
    end
    arr1.join(" ")
end

