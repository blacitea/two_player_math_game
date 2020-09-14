require_relative 'player.rb'
require_relative 'question.rb'
class Game
  attr_reader :p1, :p2
  def initialize
    #@active_player = @player_list[0]
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @player_list = [p1, p2]
    @active_player = p1
  end

  def new_turn
    if @active_player == p1
      @active_player = p2
    else
      @active_player = p1
    end
    puts "-----NEW TURN-----"
  end

  def turn
    question = Question.new(@active_player)
    question.ask
    question.check_answer
    puts "P1: #{p1.lives} vs P2: #{p2.lives}"
  end

  def next?
    p1.alive? && p2.alive?
  end

  def winner
    winner = @player_list.find {|player| player.alive?}
    puts "#{winner.name} wins with a score of #{winner.lives}"
  end

  def game_over
    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

  def start_game
    turn
    while next?
      new_turn
      turn
    end
    winner
    game_over
  end

end