class ComputerPlayer

    attr_reader :mark 

    def initialize(val)
        @mark = val
    end

    def get_position(legal_positions)
        choice = legal_positions.sample
        puts "The Computer #{self.mark} chose the position: #{choice}"
        choice
    end

end