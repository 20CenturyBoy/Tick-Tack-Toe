class Board
    attr_accessor :board_postions
    def initialize()
        @board_postions = Array.new(3) {Array.new(3," ")}
    end

    def update_board(first_coordinate,second_coordinate,symbol,player)
        if (@board_postions[first_coordinate][second_coordinate] != " ")
            puts "Postion is taken please input diffrent coordinates"
            player.make_a_move(self)
        else
            @board_postions[first_coordinate][second_coordinate] = symbol
        end
    end
    def display_board
        puts <<-HEREDOC

       #{@board_postions[0][0]} | #{@board_postions[0][1]} | #{@board_postions[0][2]}
      ---+---+---
       #{@board_postions[1][0]} | #{@board_postions[1][1]} | #{@board_postions[1][2]}
      ---+---+---
       #{@board_postions[2][0]} | #{@board_postions[2][1]} | #{@board_postions[2][2]}

    HEREDOC
    end
end