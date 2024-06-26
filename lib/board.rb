class board
    def initalize()
        @board = Array.new(3) {Array.new(3)}
    end

    def update_board(first_coordinate,second_coordinate,symbol)
        @board[first_coordinate][second_coordinate] = symbol
        display_board()
        check_for_winner()
    end
    def display_board
        puts "#{board[0]} /n #{board[1]} /n #{board[2]}"
    end
    def check_for_winner()
        if board[0].all? = x || board[0].all? = y
    end
end