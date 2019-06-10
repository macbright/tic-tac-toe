class GameBoard

    attr_reader :board
    def initialize
        @board = Array.new(3){Array.new(3)}
        board_layout(@board)
        @turn = 0
        @move_animation = "X"
    end
    
    def board_layout (board)
        puts " #{board[0][0]}  |  #{board[0][1]}  |  #{board[0][2]} "
        
        puts "------------" 
        puts " #{board[1][0]}  |  #{board[1][1]}  |  #{board[1][2]} "
        
        puts "------------"  
        puts " #{board[2][0]}  |  #{board[2][1]}  |  #{board[2][2]} "
    end

    def move(player_action)
       #example input = > player_action = [1,1]
        if !position_taken(player_action)
            @board[player_action[0]][player_action[1]] = @move_animation
            animation_current_turn
            print board_layout(@board)
            print "\n"
        else
            return print "Taken. Take another position. \n"
        end
    end

    private 
    def animation_current_turn
        @turn%2==0? @move_animation = "O": @move_animation= "X"
        @turn += 1
    end

    def position_taken(player_action)
        if @board[player_action[0]][player_action[1]] != nil
            return true
        end
    end

end



## testing
proba = GameBoard.new
puts proba.board
proba.move([1,1])

proba.move([1,2])

proba.move([2,0])
proba.move([2,1])
proba.move([2,1])
proba.move([2,2])
proba.move([2,2])

proba.move([0,2])

