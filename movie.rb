class Movie
  def initialize(title, rank = 0)
    @title = title.capitalize
    @therank = rank
  end

  def thumbs_up
    @therank += 1
  end

  def thumbs_down
    @therank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@therank}"
  end
end