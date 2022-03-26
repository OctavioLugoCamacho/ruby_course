class Movie
  attr_reader :therank
  attr_accessor :title

  def initialize(title, rank = 0)
    @title = title.capitalize
    @therank = rank
    @snack_carbs = Hash.new(0)
  end

  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end
  end

  def carbs_consumed
    @snack_carbs.values.reduce(0, :+)
  end

  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{title} led to #{snack.carbs} #{snack.name} being consumed"
    puts "#{title}'s snacks: #{@snack_carbs}"
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

  def <=>(other_movie)
    other_movie.therank <=> @therank
  end

  def to_s
    "#{@title} has a rank of #{@therank} (#{status})"
  end
end