class Question

  def initialize (active_player)
    @number1 = rand(20)
    @number2 = rand(20)
    @active_player = active_player
    @question = "#{@active_player}: What does #{@number1} plus #{@number2} equal?"
    @answer = @number1 + @number2
  end

end
