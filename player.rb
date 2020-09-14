class Player
  def initialize
    @lives_count = 3
  end

  def lives
    @lives_count
  end

  def subtract_lives
    lives >= 1 ? @lives_count -= 1 : "Player is dead."
  end

  def dead?
    @lives_count < 1
  end
end
