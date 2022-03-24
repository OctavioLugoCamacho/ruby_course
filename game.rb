require_relative 'player'
require_relative 'gameturn'

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
      GameTurn.take_turn(player)
      puts player
    end
  end
end