require_relative 'player.rb'

class GameBoard

    attr_reader :board

    def initialize
        @board = Array.new(3){Array.new(3)}
        board_layout(@board)
        @turn = 0
        @player = Player.new()
        @move_animation = @player.set_mark
    end
    
    def board_layout(board)
        puts " #{board[0][0]|| 1}  |  #{board[0][1] || 2}  |  #{board[0][2] || 3} "  
        puts "----+-----+----" 
        puts " #{board[1][0] || 4}  |  #{board[1][1] ||5}  |  #{board[1][2] ||6} " 
        puts "----+-----+----"  
        puts " #{board[2][0] ||7}  |  #{board[2][1] ||8}  |  #{board[2][2] ||9} "
    end

    def move(player_action)
        if !position_taken(player_action)
            @board[player_action[0]][player_action[1]] = @move_animation
            animation_current_turn
            print board_layout(@board)
            print "\n"
        else
            return "fail"
        end
    end

    def reset_board 
        @board = Array.new(3){Array.new(3)}
        board_layout(@board)
    end

    private 

    def animation_current_turn
        @move_animation == "X" ?  @move_animation = "O" : @move_animation = "X" if @turn%2==0 
        @turn = 2
    end

    def position_taken(player_action)
        if @board[player_action[0]][player_action[1]] != nil
            return true
        end
    end

end

