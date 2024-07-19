class Game_Controller 
    def initialize
        @symbol_choosen = nil
    end
=begin
     def introductions
        puts "Introductions:"
        sleep (2)
        puts "This is a game of Tick Tack Toe played via command line"
        sleep(2)
        puts "Rules are as follows:"
        sleep (2)
        puts "The first coordinate that you input refers to the row on board."
        sleep (2)
        puts "Like so:
        1_|_|_
        2_|_|_
        3_|_|_"
        sleep (2)
        puts "While second coordinate refer to the column on baord"
        sleep (2)
        puts "Like so:
        1 2 3
        _|_|_
        _|_|_
        _|_|_"
        sleep (2)
        puts "So lets get started with a game"
        sleep (2)
    end
=end
    def define_a_symbol(player)
        if @symbol_choosen == nil
            while (@symbol_choosen != "x" && @symbol_choosen != "y")
                puts "#{player.name} choose a symbol"
                @symbol_choosen = gets.chop 
                player.symbol = @symbol_choosen
            end
        else
            if @symbol_choosen == "x"
                player.symbol = "y"
            else 
                player.symbol = "x"
            end
        end
    end
    def round(player_one,player_two,board)
        result = nil
        player_one.make_a_move(board)
        board.display_board()
        result = check_for_winner(player_one,player_two,board)
        if (result == true) 
            return true
        elsif (result == "draw")
            puts "ASDSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
            return "draw"
        end
        player_two.make_a_move(board)
        board.display_board()
        result = check_for_winner(player_one,player_two,board)
        if (result == true) 
            return true
        elsif (result == "draw")
            puts "ASDSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
            return "draw"
        end
    end
    def check_for_winner(player_one,player_two,board)
        i=0
        j=0
        draw = true
        winner_symbol = nil
        while i<3 do
            if (board.board_postions[i].all? {|symbol| symbol == "x"} || board.board_postions[i].all? {|symbol| symbol == "y"})
                winner_symbol = board.board_postions[i][i]
                if (player_one.symbol == winner_symbol)
                    puts "The winner is #{player_one.name}"
                    return true
                else
                    puts "The winner is #{player_two.name}"
                    return true
                end 
            elsif (board.board_postions[j][i] == "x" || board.board_postions[j][i] == "y")
                winner_symbol = board.board_postions[j][i]
                winner = true
                while j < 3
                    if (board.board_postions[j][i] != winner_symbol)
                        winner = false
                        break
                    end
                    j = j+1
                end
                if (winner == true)
                        if (player_one.symbol == winner_symbol)
                            puts "The winner is #{player_one.name}"
                            return true
                        else
                            puts "The winner is #{player_two.name}"
                            return true
                        end
                end 
                j = 0
            end
            i = i+1
        end
        if (board.board_postions[0][0] == "x" || board.board_postions[0][0] == "y")
            if (board.board_postions[0][0] == board.board_postions[1][1])
                if (board.board_postions[1][1] == board.board_postions[2][2])
                    winner_symbol = board.board_postions[0][0]
                    if (player_one.symbol == winner_symbol)
                        puts "The winner is #{player_one.name}"
                        return true
                    else
                        puts "The winner is #{player_two.name}"
                        return true
                    end
                end
            end
        end
        if (board.board_postions[0][2] == "x" || board.board_postions[0][2] == "y")
            if (board.board_postions[0][2] == board.board_postions[1][1])
                if(board.board_postions[1][1] == board.board_postions[2][0])
                    winner_symbol = board.board_postions[0][2]
                    if (player_one.symbol == winner_symbol)
                        puts "The winner is #{player_one.name}"
                        return true
                    else
                        puts "The winner is #{player_two.name}"
                        return true
                    end
                end
            end
        end
        k = 0
        while k < 3
            if (board.board_postions[k].any? {|symbol| symbol == " "})
                draw = false
            end
            k = k+1
        end
        if draw == true
            puts "its a draw"
            return "draw"
        end
    end
end