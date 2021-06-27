class HumanPlayer
    attr_reader :mark 

    def initialize(val)
        @mark = val
    end

    def get_position(legal_positions)
        pos = nil

        until legal_positions.include?(pos)
            puts "Player #{@mark}, please enter two numbers in the format 'row, col'"
            pos = gets.chomp.split(" ").map(&:to_i)
            puts "Sorry #{pos} is not a valid position" if !legal_positions.include?(pos)
            raise "Sorry, that was invalid" if pos.length != 2
        end

        pos
    end
end

