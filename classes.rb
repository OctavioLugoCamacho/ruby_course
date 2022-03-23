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

movie1 = Movie.new("star wars", 10)
movie1.thumbs_up
puts movie1

movie2 = Movie.new("batman", 9)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("avengers")
puts movie3

#Exercise
class Player
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def say_hello
    "I'm #{@name} with a health of #{@health}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
end

player3 = Player.new("curly", 125)
puts player3.say_hello
player3.blam
puts player3.say_hello
player3.w00t
puts player3.say_hello

class Calculator
  def initialize(a, b)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end

  def subtract
    @a - @b
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract