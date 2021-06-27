def hand_score(hand)
    total = 0
    hand.upcase.each_char do |char|
        case char
        when "A" 
            total += 4
        when "K"
            total += 3
        when "Q"
            total += 2
        when "J"
            total += 1
      end     	
    end
    return total
end
  
puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9