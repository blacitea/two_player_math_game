class Player
  attr_accessor :name, :lives_count

  def initialize(name)
    @name=name
    @lives_count = 3
  end

  def lives
    "#{lives_count}/3"
  end

  def subtract_lives
    lives_count >= 1 ? @lives_count -= 1 : "Player is dead."
  end

  def alive?
    lives_count > 0
  end
end
