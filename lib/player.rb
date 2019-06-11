class Player

    attr_reader :coordinates

    def initialize
        @coordinates = [nil,nil]

        # @move_animation = move_animation
        
    end


    def ask_for_move
        print "Choose a row \n"
        move_x = gets.chomp().to_i
        print "Choose a column \n"
        move_y = gets.chomp().to_i
        @coordinates = [move_x, move_y]
    end


end
