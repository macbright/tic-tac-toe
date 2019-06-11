DIRECTORY = "SAMUEL"

if DIRECTORY == "BRIGHT"
    require '/Users/macbright/Desktop/tic-tac-toe/lib/player.rb'
    require '/Users/macbright/Desktop/tic-tac-toe/lib/game_board.rb'
elsif DIRECTORY == "SAMUEL"
    require '/home/samuel/Desktop/Microverse/Ruby/Projects/tic-tac-toe/lib/game_board.rb'
    require '/home/samuel/Desktop/Microverse/Ruby/Projects/tic-tac-toe/lib/player.rb'
end

class GameInterface
    # WIN_COMBINATION = [
    #     [board[0][0], board[0][1], board[0][2]]
    #     [board[1][0], board[1][1], board[1][2]]
    #     [board[2][0], board[2][1], board[2][2]]
    #     [board[0][0], board[1][0], board[2][0]]
    #     [board[0][1], board[1][1], board[2][1]]
    #     [board[0][2], board[1][2], board[2][1]]
    #     [board[0][0], board[1][2], board[2][1]]
    #     [board[0][2], board[1][2], board[2][0]]
    # ]
    
    def initialize
        print "\n Starting a new game \n \n"
        @board_this_game = GameBoard.new()
        player1 = Player.new()
        player2 = Player.new()
        @current_player = player1
        @game_stops = false
        @count = 0

    end
    def play_game
        until @game_stops == true
            @current_player.ask_for_move
            @count += 1
            print @current_player.coordinates, " \n"
            print "\n"
            @board_this_game.move(@current_player.coordinates)
            win_game
            check_draw
        end
        print "finished"
    end
    def win_game
        check_horizontal_win(@board_this_game.board)
        check_vertical_win(@board_this_game.board)
        check_diagonal_win(@board_this_game.board)
    end

    def check_horizontal_win(board)
        i = 0
        3.times do 
            if board[i][0] == "X" && board[i][1]  == "X" && board[i][2] == "X"
                print "Player X won"
                game_stops
            elsif board[i][0] == "O" && board[i][1]  == "O" && board[i][2] == "O"
                print "Player O won"
                game_stops
            end
            i += 1
        end
    end

    def check_vertical_win(board)    
        for i in 0..3
            if board[0][i] == "X" && board[1][i]  == "X" && board[2][i] == "X"
                print "Player X won"
                game_stops
            elsif  board[0][i] == "O" &&  board[1][i]  == "O" && board[2][i] == "O"
                print "Player O won"
                game_stops         
            end
        end
    end

    def check_diagonal_win(board)     
        if board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X"
            print "Player X won"
            game_stops
        elsif board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O"
            print "Player O won"
            game_stops
        elsif board[2][0] == "X" && board[1][1] == "X" && board[0][2] == "X"
            print "Player X won"
            game_stops
        elsif board[2][0] == "O" && board[1][1] == "O" && board[0][2] == "O"
            print "Player O won"
            game_stops
        end
    end

    def game_stops
        @game_stops = true
        print "\n Game is finished! \n"
    end

    def check_draw
        if @count == 9
            puts "It's a draw"
            game_stops
        end
    end

    def switch_player
        if @current_player == player1
            @current_player = player2
        else
            @current_player = player1
        end
    end






end


new_game = GameInterface.new()
new_game.play_game