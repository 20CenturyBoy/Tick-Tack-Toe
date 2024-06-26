class player
    def initalize()
        @name = gets "Whats your name"
        @move = 0
        @symbol = gets "Choose your symbol"
    end

    def make_a_move()
        while(true)
            first_coordinate = gets "Input first coordinate"
            if(first_coordinate < 0 || first_coordinate > 2)
                puts "Please choose coordinate between 0 and 2"
            else
                break
            end
        end
        while(true)
            second_coordinate = gets "Input second coordinate"
            if(first_coordinate < 0 || first_coordinate > 2)
                puts "Please choose coordinate between 0 and 2"
            else
                break
            end
        end
        @move = @move + 1 
        puts "#{name} made his #{move}rd"
        board.update_board(first_coordinate,second_coordinate,symbol)
    end
end