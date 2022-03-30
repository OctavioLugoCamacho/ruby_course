require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/player'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
defaultfile = File.join(File.dirname(__FILE__), 'players.csv')
knuckleheads.load_players(ARGV.shift || defaultfile)
klutz = ClumsyPlayer.new("klutz", 105)
knuckleheads.add_player(klutz)
berserker = BerserkPlayer.new("berserker", 50)
knuckleheads.add_player(berserker)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores