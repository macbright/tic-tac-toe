require '/home/samuel/Desktop/Microverse/Ruby/Projects/tic-tac-toe/lib/game_board.rb'
require '/home/samuel/Desktop/Microverse/Ruby/Projects/tic-tac-toe/lib/player.rb'

class GameInterface


    def initialize
        print "\n Starting a new game \n \n"
        board_this_game = GameBoard.new()
        game_stops = false

        while game_stops == false




        end
        
        print "finished"
    end


    def win_game

        check_horizontal_win(board_this_game.board)
        check_vertical_win(board_this_game.board)
        check_diagonal_win(board_this_game.board)
        print "\n Next turn"


    end

    def check_horizontal_win(board)

        i = 0

        3.times do |i|

            if board[i] == "X"  
                print "Player X won"
                game_stops

            elsif board[i] == "O"
                print "Player O won"
                game_stops

            end

            i += 1
                
        end

    end

    def vertical_win(board)    
        for i in 0..3
               if board[0][i] == board[1][i] == board[2][i] == "X"
                print "Player X won"
                game_stops
               elsif  board[0][i] == board[1][i] == board[2][i] == "O"
                print "Player O won"
                game_stops         
               end
        end
    end

    def diagonal_win(board)     
        if board[0][0] == board[1][1] == board[2][2] == "X"
            print "Player X won"
            game_stops
        elsif board[0][0] == board[1][1] == board[2][2] == "O"
            print "Player O won"
            game_stops
        elsif board[2][0] == board[1][1] == board[0][2] == "X"
            print "Player X won"
            game_stops
        elsif board[2][0] == board[1][1] == board[0][2] == "O"
            print "Player O won"
            game_stops
        end
    end

    def game_stops
        game_stops = true
    end


end


new_game = GameInterface.new()