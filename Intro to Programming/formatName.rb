def format_name(str)
  
    parts = str.split(" ")
    newParts = []
    
    parts.each do |part|
      newParts << part[0].upcase + part[1..-1].downcase
    end
    
    return newParts.join(" ")
end
  
puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"