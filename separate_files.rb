require_relative 'movie'
require_relative 'movie3d'
require_relative 'playlist'

movie1 = Movie.new("star wars", 10)
movie2 = Movie.new("batman", 9)
movie3 = Movie.new("avengers")

playlist1 = Playlist.new("Octavio")
playlist1.load(ARGV.shift || "movies.csv")
movie3d = Movie3D.new('revenge of the sith', 5, 20)
playlist1.add_movie(movie3d)

loop do
  puts "How many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    playlist1.play(answer.to_i)
  when 'exit', 'quit'
    playlist1.print_stats
    break
  else
    puts "Please enter a number or quit"
  end
end

playlist1.save