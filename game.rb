require_relative 'player'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(a_player)
    @players << a_player
  end

  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end

    @players.each do |player|
      die = Die.new
      number_rolled = die.roll
      if number_rolled < 3
        player.blam
      elsif number_rolled < 5
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
      puts player
    end
  end
end