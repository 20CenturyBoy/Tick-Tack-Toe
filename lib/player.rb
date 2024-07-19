class Player
    @@number_of_players = 0
    attr_accessor :symbol, :name
    def initialize()
        @symbol = nil
        if @@number_of_players == 0
            puts "Player number one what is your name?"
            @name = gets.chop
            @@number_of_players += 1
        else @@number_of_players == 1
            puts "Player number two what is your name?"
            @name = gets.chop
            @@number_of_players += 1
        end
        @move = 0
    end
    def make_a_move(board)
        while(true)
            puts("#{@name} input first coordinate")
            first_coordinate = gets.chop.to_i
            if(first_coordinate < 1 || first_coordinate > 3)
                puts "Please choose coordinate between 1 and 3"
            else
                break
            end
        end
        while(true)
            puts "#{@name} input second coordinate"
            second_coordinate = gets.chop.to_i
            if(first_coordinate < 1 || first_coordinate > 3)
                puts "Please choose coordinate between 1 and 3"
            else
                break
            end
        end
        @move = @move + 1 
        case (@move)
        when 1
            puts "#{@name} made his first move"
        when 2
            puts "#{@name} made his second move"
        when 3
            puts "#{@name} made his 3rd move"
        else
            puts "#{@name} made his #{@move}th move"
        end
        board.update_board(first_coordinate-1,second_coordinate-1,@symbol,self)
    end
end