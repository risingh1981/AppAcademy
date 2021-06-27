def ae_count(str)
    aCount = 0
    eCount = 0
    
    str.each_char do |char|
      if char == "a"
        aCount += 1
      elsif char == "e"
        eCount += 1
      end
    end
        
    hash = {"a" => aCount, "e" => eCount}
    return hash
end
  
puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}