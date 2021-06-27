require './board.rb'
require './human_player.rb'


class Game

    def initialize(board_size, *player_marks)
        @players = player_marks.map {|player_mark| HumanPlayer.new(player_mark) }
        @current_player = @players.first
        @board = Board.new(board_size)
    end

    def switch_turn
        @players.rotate!(1)
        @current_player = @players.first
    end

    def play
        while @board.empty_positions
            @board.print
            pos = @current_player.get_position
            @board.place_mark(pos, @current_player.mark)
            if @board.win?(@current_player.mark)
                print "Player #{@current_player.mark} has won!."
                return
            else
                self.switch_turn
            end
        end

        print "There was a draw!"
    end
            








end


