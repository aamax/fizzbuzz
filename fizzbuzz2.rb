class Game
 attr_accessor :element
  def initialize (value)
    @element = Array.new(value + 1)
    @element[1] = 1
    @element[2] = 2
  end
end

describe Game do
  it "should create a game to play" do
    game = Game.new(100)
    game.should_not == nil
  end

  it "should return 1 for first element" do
    game = Game.new(100)
    game.element[1].should == 1
  end

  it "should return 2 for the second element" do
    game = Game.new(100)
    game.element[2].should == 2
  end
end