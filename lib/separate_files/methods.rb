def current_day()
  time = Time.new
  time.strftime("%A")
end

def movie_listing(title, rank = 0)
  "#{current_day.upcase}: #{title.capitalize} has a rank of #{rank}."
end

puts movie_listing("star wars", 10)
puts movie_listing("halloween", 9)

movie = "batman"

puts movie_listing(movie)

#Exercise
def time
  current_time = Time.new
  current_time.strftime("%I:%M:%S")
end

def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}."
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe", 100)
puts say_hello("shemp", 90)