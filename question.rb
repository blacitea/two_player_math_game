class Question
  attr_reader :number1, :number2, :correct_answer

  def initialize #(active_player)
    @number1 = rand(20)
    @number2 = rand(20)
    # @active_player = active_player
    # @player_answer
    @correct_answer = @number1 + @number2
  end
=begin  Removing player related login to keep question class clean
  def ask
    puts "#{@active_player.name}: What does #{@number1} plus #{@number2} equal?"
    print "> "
    @player_answer = $stdin.gets.chomp.to_i
  end

  def check_answer
    if @player_answer == @correct_answer
      puts "#{@active_player.name}: YES! You are correct."
    else
      puts "#{@active_player.name}: Seriously? NO!"
      @active_player.subtract_lives
    end
  end
=end
end
