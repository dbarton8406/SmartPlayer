class SmartPlayer
  def initialize
    @low = 1
    @high =101

  end
  def update_logic(too_high, guess)
    if too_high
      @high = guess
    else
      @low = guess
    end
  end
  def get_guess
    (@low + @high)/2
  end
end
