class Movie
  attr_reader :therank
  attr_accessor :title

  def initialize(title, rank = 0)
    @title = title.capitalize
    @therank = rank
  end

  def hit?
    @therank >= 10
  end

  def status
    hit? ? "Hit" : "Flop"
  end

  def thumbs_up
    @therank += 1
  end

  def thumbs_down
    @therank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@therank} (#{status})"
  end
end