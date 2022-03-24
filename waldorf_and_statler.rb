module WaldorfAndStatler
  def self.roll_die
    rand(1..6)
  end

  def self.review(movie)
    number_rolled = roll_die
      if number_rolled < 3
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down"
      elsif number_rolled < 5
        puts "#{movie.title} was skipped"
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up"
      end
  end
end
