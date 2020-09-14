require_relative 'player.rb'
class Game
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @player_list = [{player1: Player.new}, @player2]
    @active_player = @player_list[0]
  end

end