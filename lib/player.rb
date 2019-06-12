class Player

    attr_reader :coordinates

    def initialize
        @coordinates = [nil,nil]        
    end
    
    private
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

    public
    def ask_for_move
        print "\n Choose a number: "
        move_x = gets.chomp().to_i
        while !move_x.between?(1,9)
            puts "you entered a wrong number, enter number from 1 to 9 \n"
            print "\n Choose a number: "
            move_x = gets.chomp().to_i
        end
        @coordinates = our_hash[move_x]
    end

    def set_mark
        puts "\n"
        puts "\n Which mark will you like to use ? select either:
         1 = 'X' 
         2 = 'O'"
        print "\nPlayer1 choose a mark:  "
        mark_1 = ""
        players_mark = gets.chomp().to_i
        while !players_mark.between?(1,2)
            puts "you entered a wrong value, please select either 1 or 2 \n"
            print "\n Player1 choose a mark:   "
            players_mark = gets.chomp().to_i
        end
        if players_mark == 1 
            mark_1 = "x".upcase
        else
            mark_1 = "o".upcase
        end
        if mark_1 == "X"
            puts "player1 your mark is   'X'\n"
            puts "player2 your mark is 'O' \n"
        else
            puts "player1 your mark is   '0'\n"
            puts "player2 your mark is 'X' \n"
        end
        mark_1
    end

end
