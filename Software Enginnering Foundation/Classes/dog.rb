class Dog

    def initialize(name, breed,age, bark,fav_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = fav_foods
    end

    def name
        @name
    end

    def age
        @age
    end

    def breed
        @breed
    end

    def favorite_foods
        @favorite_foods
    end

    def age=(num)
        @age = num
    end
    
    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_food?(item)
        @favorite_foods.map! { |x| x.downcase}

        return @favorite_foods.include?(item.downcase)
    end
end


dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
# "should accept a name (string), breed (string), age (number), bark (string), and favorite_foods (array) as arguments" do
 
#"should set the instance variables @name, @breed, @age, @bark, @favorite_foods" do
print dog.instance_variable_get(:@name)
puts
#"Fido"
print dog.instance_variable_get(:@breed)
puts
#"German Shepard"
print dog.instance_variable_get(:@age)
puts
#3
print dog.instance_variable_get(:@bark)
puts
# "Bork!"
print dog.instance_variable_get(:@favorite_foods)
puts
# ["Bacon", "Chicken"])


#"#name" 
 # "should get (return) the dog's name instance variable" 
puts  dog.name
puts dog.instance_variable_get(:@name)
   

# "#breed"
# "should get (return) the dog's breed instance variable" do
 puts dog.breed
 puts dog.instance_variable_get(:@breed)
  
#"#age" 
# "should get (return) the dog's age instance variable" do
 puts dog.age
 puts dog.instance_variable_get(:@age)
  

# "#age="
#"should set the dog's age instance variable to a new number" do
dog.age = 42
puts dog.age
puts 42
  

# "#bark" 
# "should return the dog's uppercase bark if the dog's age is greater than 3" 
dog.age = 5
puts dog.bark
puts "BORK!"
    
#"should return the dog's lowercase bark if the dog's age is less than or equal to 3"
dog.age = 3
puts dog.bark
puts "bork!"

dog.age = 2
puts dog.bark
puts "bork!"

# "#favorite_foods" 
#"should return the dog's favorite_foods instance variable" 
puts dog.favorite_foods
puts dog.instance_variable_get(:@favorite_foods)
    

#"#favorite_food?" 
# "should accept a food item (string) as a parameter and return a boolean 
# indicating whether the dog's @favorite_foods contain that food item" do
puts dog.favorite_food?("Bacon")
# true
puts dog.favorite_food?("Banana")
# false
    

#"should match food items regardless of capitalization" do
puts dog.favorite_food?("bacon")
# true
puts dog.favorite_food?("ChIckEn")
# true
 