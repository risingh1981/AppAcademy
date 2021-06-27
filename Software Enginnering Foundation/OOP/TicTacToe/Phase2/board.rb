class Board

    def initialize(n)
        @grid = Array.new(n, "_") { Array.new(n, "_") }
    end

    def valid?(position)
        row,col = position
        row >= 0 && row < @grid.length && col >= 0 && col < @grid.length
    end

    def empty?(position)
        row,col = position
        @grid[row][col] == "_"
    end

    def place_mark(position, mark)
        row,col = position
        raise "Position not valid or not empty" if !empty?(position) || !valid?(position)
        @grid[row][col] = mark
    end

    def print
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def win_row?(mark)
        @grid.any? do |row|
            row.all?(mark)
        end
    end

    def win_col?(mark)
        @grid.transpose.any? do |col|
            col.all?(mark)
        end
    end

    def win_diagonal?(mark)
        main_diagonal = (0...@grid.length).all? do |i|
            @grid[i][i] == mark
        end

        other_diag = (0...@grid.length).all? do |i|
            @grid[i][@grid.length - i - 1] == mark
        end

        main_diagonal || other_diag
    end


    def win?(mark)
        win_diagonal?(mark) || win_col?(mark) || win_row?(mark)
    end

    def empty_positions
        indices = (0...@grid.length).to_a
        positions = indices.product(indices)
        positions.any? { |pos| self.empty?(pos)}
    end

end

