class Movie
  attr_reader :therank
  attr_accessor :title

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

movie1 = Movie.new("star wars", 10)
puts movie1.title
puts movie1.therank
puts movie1.title = "batman"

#Exercise
class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
end

player2 = Player.new("larry", 60)
puts player2.to_s
