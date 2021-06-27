class HumanPlayer
    attr_reader :mark 

    def initialize(val)
        @mark = val
    end

    def get_position
        puts "Player #{@mark}, please enter two numbers in the format 'row, col'"
        input = gets.chomp.split(" ").map(&:to_i)
        raise "Sorry, that was invalid" if input.length != 2
        input
    end
end

