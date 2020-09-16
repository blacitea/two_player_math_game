require_relative 'player.rb'
require_relative 'question.rb'
class Game

  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @player_list = [@p1, @p2]
    @active_player
  end

  def turn
    @active_player = @player_list[0]
    question = Question.new

    puts "#{@active_player.name}: What does #{question.number1} plus #{question.number2} equal?"
    print "> "
    player_answer = $stdin.gets.chomp.to_i

    if player_answer == question.correct_answer
      puts "#{@active_player.name}: YES! You are correct."
    else
      puts "#{@active_player.name}: Seriously? NO!"
      @active_player.subtract_lives
    end

    puts "P1: #{@p1.lives} vs P2: #{@p2.lives}"

  end

  def new_turn
    @player_list.rotate!
    p @player_list
    puts "-----NEW TURN-----"
    turn
  end

  def continue?
    @p1.alive? && @p2.alive?
  end

  def game_over
    winner = @player_list.find {|player| player.alive?}
    puts "#{winner.name} wins with a score of #{winner.lives}"
    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

  def start_game
    turn
    while continue?
      new_turn
    end
    game_over
  end

end