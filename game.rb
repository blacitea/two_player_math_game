require_relative 'player.rb'
require_relative 'question.rb'
class Game
  def initialize
    @player_list = [Player.new("Player 1"), Player.new("Player 2")]
    @active_player = @player_list[0]
  end

  def new_turn
    @active_player == @player_list[0]? @active_player = @player_list[1] : @active_player = @player_list[0]
    "-----NEW TURN-----"
  end

  def turn
    question = Question.new(@active_player)
    question.ask
    if question.is_correct?
      puts "#{@active_player.name}: YES! You are correct."
    else
      puts "#{@active_player.name}: Seriously? NO!"
      @active_player.subtract_lives
    end
    puts "P1: #{@player_list[0].lives}/3 vs P2: #{@player_list[1].lives}/3"
  end

end