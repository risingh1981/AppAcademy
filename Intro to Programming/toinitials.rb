def to_initials(name)
    init = ""
    array = name.split(" ")
    
    array.each { |ele| init = init + ele[0] }
    
    return init
end
  
puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"