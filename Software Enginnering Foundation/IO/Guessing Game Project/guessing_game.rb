class GuessingGame
    def initialize(min,max)
        @secret_number = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end
    
    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end


    def check_num(num)
        @num_attempts += 1

        if num == @secret_number
            @game_over = true
            puts "you win"
        elsif num > @secret_number
            puts "too big"
        else
            puts "too small"
        end
    end

    def game_over?
        @game_over
    end

    def ask_user
        puts "enter a number"
        n = gets.chomp.to_i
        self.check_num(n)
    end
end
