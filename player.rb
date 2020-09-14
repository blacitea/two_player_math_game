class Player
  def initialize
    @lives_count = 3
  end

  def lives
    @lives_count
  end

  def subtract_lives
    if lives >= 1
      @lives_count -= 1
    else
      "Player is dead? " + dead?.to_s
    end
  end

  def dead?
    @lives_count < 1
  end
end
