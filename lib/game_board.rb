class GameBoard

    attr_reader :board

    def initialize

        @board = [[nil,nil,nil], [nil, nil, nil], [nil,nil,nil]]
        
        @turn = 0

        @move_animation = "X"

    end


    def placing_action_in_board(player_action)
        
       #example input = > player_action = [1,1]

        if !position_taken(player_action)

            @board[player_action[0]][player_action[1]] = @move_animation
            animation_current_turn

            print @board
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

