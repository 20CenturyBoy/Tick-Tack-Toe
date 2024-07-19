require_relative 'lib/board.rb'
require_relative 'lib/player.rb'
require_relative 'lib/game_controller.rb'

game_controller = Game_Controller.new
=begin
game_controller.introductions
=end
board = Board.new
player_one = Player.new
player_two = Player.new
game_controller.define_a_symbol(player_one)
game_controller.define_a_symbol(player_two)
while true
    result = game_controller.round(player_one,player_two,board)
    if (result ==  true || result == "draw" )
        break
    end
end


