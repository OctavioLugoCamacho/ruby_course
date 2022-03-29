require_relative 'movie'

class Movie3D < Movie
  def initialize(title, rank, wow_factor)
    super(title,rank)
    @wow_factor = wow_factor
  end

  def thumbs_up
    @wow_factor.times { super }
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end
end

movie3d = Movie3D.new('batman', 10, 20)
puts movie3d.title
puts movie3d.therank

movie3d.thumbs_up
puts movie3d.therank
puts movie3d

movie3d.show_effect