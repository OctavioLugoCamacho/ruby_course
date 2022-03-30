module Rankable
  def thumbs_up
    self.therank += 1
  end

  def thumbs_down
    self.therank -= 1
  end

  def hit?
    self.therank >= 10
  end

  def status
    hit? ? "Hit" : "Flop"
  end

  def normalized_rank
    self.therank / 10
  end

  def <=>(other_movie)
    other_movie.therank <=> self.therank
  end
end