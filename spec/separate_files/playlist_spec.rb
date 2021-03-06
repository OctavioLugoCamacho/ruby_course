require 'separate_files/playlist'

module Separate_files
  describe  Playlist do

    before do
      @playlist = Playlist.new("Octavio")
    end

    context "being played with one movie" do
      before do
        @initial_rank = 10
        @movie = Movie.new("batman", @initial_rank)
        @playlist.add_movie(@movie)
      end

      it "gives the movie a thumbs up if a high number is rolled" do
        WaldorfAndStatler.stub(:roll_die).and_return(5)
        @playlist.play(2)
        @movie.therank.should == @initial_rank + (1 * 2)
      end

      it "skips the movie if a medium number is rolled" do
        WaldorfAndStatler.stub(:roll_die).and_return(3)
        @playlist.play(2)
        @movie.therank.should == @initial_rank
      end

      it "gives the movie a thumbs down if a low number is rolled" do
        WaldorfAndStatler.stub(:roll_die).and_return(1)
        @playlist.play(2)
        @movie.therank.should == @initial_rank - (1 * 2)
      end
    end
  end
end