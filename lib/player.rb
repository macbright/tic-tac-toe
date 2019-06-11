class Player

    attr_reader :coordinates

    def initialize
        @coordinates = [nil,nil]

        # @move_animation = move_animation
        
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
end
