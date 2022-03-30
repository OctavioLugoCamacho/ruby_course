movie = 'Star Wars'
rank = 10

puts 'Octavio loves Ghost'
puts 'Octavio\'s favorite movie is Star Wars'
puts 'Octavio\'s favorite movie is ' + movie
puts movie + ' has a rank of ' + rank.to_s

puts "Octavio loves Ghost"
puts "Octavio's favorite movie is Star Wars"
puts "Octavio's favorite movie is #{movie}"
puts "#{movie} has a \trank of \n#{rank * 2}"

#Exercise
name1 = 'larry'
name2 = 'curly'
name3 = 'moe'
health1 = 60
puts "#{name1}'s health is #{health1 * 3}"

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"
