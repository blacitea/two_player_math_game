class Question

  def initialize (active_player)
    @number1 = rand(20)
    @number2 = rand(20)
    @active_player = active_player.name
    @player_answer
    @correct_answer = @number1 + @number2
  end

  def ask
    puts "#{@active_player}: What does #{@number1} plus #{@number2} equal?"
    @player_answer = $stdin.gets.chomp.to_i
  end

  def is_correct?
    @player_answer == @correct_answer
  end

end
