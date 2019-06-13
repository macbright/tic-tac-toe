class GameBoard

    attr_reader :board

    def initialize
        @board = Array.new(3){Array.new(3)}
 
    end

    public 

    def reset_board 
        GameBoard.new()
    end

    def move(player_action, mark)
        if !position_taken(player_action)
            @board[player_action[0]][player_action[1]] = mark
        else
            return "fail"
        end
    end

    def our_hash
        new_hash = {
            1 => [0,0],
            2 => [0,1],
            3 => [0,2],
            4 => [1,0],
            5 => [1,1],
            6 => [1,2],
            7 => [2,0],
            8 => [2,1],
            9 => [2,2]
        }
        return new_hash
    end


    private 

    def position_taken(player)
        coordinates = player
        if @board[coordinates[0]][coordinates[1]] != nil
            return true
        end
    end


end