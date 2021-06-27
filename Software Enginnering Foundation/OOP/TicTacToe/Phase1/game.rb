require './board.rb'
require './human_player.rb'


class Game

    def initialize(player1_mark, player2_mark)
        @player1 = HumanPlayer.new(player1_mark)
        @player2 = HumanPlayer.new(player2_mark)
        @current_player = @player1
        @board = Board.new
    end

    def switch_turn
        if @current_player == @player1
            @current_player = @player2
        else
            @current_player = @player1
        end
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


