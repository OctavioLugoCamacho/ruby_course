require_relative 'movie'

describe Movie do
  before do
    @movie = Movie.new("batman", 10)
  end

  it "has a capitalized title" do
    @movie.title.should == "Batman"
  end

  it "has an initial rank" do
    @movie.therank.should == 10
  end

  it "has a string representation" do
    @movie.to_s.should == "Batman has a rank of 10"
  end

  it "increased rank by one" do
    @movie.thumbs_up.should == 11
  end

  it "decreased rank by one" do
    @movie.thumbs_down.should == 9
  end

  context "created with a default rank" do
    before do
      @movie = Movie.new("batman")
    end

    it "has a rank of 0" do
      @movie.therank.should == 0
    end
  end
end