def element_count(arr)
    hash = Hash.new(0)
    arr.each do |x|
        hash[x] += 1
    end
    hash
end

# print element_count(["cat", "dog", "cat", "cat"])


def char_replace!(str, hash)

    str.each_char.with_index do |char,i|
        if hash.keys.include?(char)
            str[i] = hash[char]
        end
    end

    str
end


# string_1 = "hello world"
# print char_replace!(string_1, {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"})

def product_inject(arr)
    # Multiply some numbers
    # (5..10).reduce(1, :*)                          #=> 151200
    # Same using a block
    # (5..10).inject(1) { |product, n| product * n }
    arr.inject(1) do |product,n|
        product * n
    end
end


# print product_inject([4, 2, 5])
#(40)
