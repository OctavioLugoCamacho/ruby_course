require 'separate_files/movie'

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
    @movie.to_s.should == "Batman has a rank of 10 (Hit)"
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

  context "with a rank of at least 10" do
    before do
      @movie = Movie.new("batman", 10)
    end

    it "is a hit" do
      @movie.hit?.should == true
    end

    context "with a rank of at least 10" do
      before do
        @movie = Movie.new("batman", 10)
      end
  
      it "has a hit status" do
        @movie.status.should == "Hit"
      end
    end
  end

  context "with a rank of less than 10" do
    before do
      @movie = Movie.new("batman", 9)
    end

    it "is not a hit" do
      @movie.hit?.should == false
    end

    it "has a flop status" do
      @movie.status.should == "Flop"
    end
  end
end