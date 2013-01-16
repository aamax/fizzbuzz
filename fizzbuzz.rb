require "pry"


# index array by 1 instead of 0
# refactor and clean up logic without breaking tests
# write passing tests for 1 - 100 and remove unneeded existing tests

class FizzBuzz
  attr_accessor :value
  
  def initialize(max_value)
    @value = []
    @max = max_value
  end
  
  def play
    
    # case statement instead of iffs
    
    (1..@max).each do |n| 
      if (n % 3 == 0) && (n % 5 == 0)
        @value << "FIZZBUZZ"
      else
        if n % 5 == 0
           @value << "BUZZ"
        elsif n % 3 == 0
          @value << "FIZZ"
        else
          @value << n
        end
      end
    end
  end
end



describe "FizzBuzz" do
  before :each do 
    @game = FizzBuzz.new(100)    
  end
  
  it "should create a game" do
    @game.nil?.should == false    
  end
  
  it "should output a 1 for the first digit in the series" do
    @game.play
    @game.value[0].should == 1
  end
  
  it "should output a 2 for the second digit in the series" do
    @game.play
    @game.value[1].should == 2
  end
  
  it "should output a 'FIZZ' for the third digit in the series" do
    @game.play
    @game.value[2].should == "FIZZ"
  end
  
  it "should output a 'BUZZ' for the fifth digit in the series" do
    @game.play
    @game.value[4].should == "BUZZ"    
  end
  
  it "should return the correct values for digits 1 through 7" do
    @game.play
    
    (1..7).each do |n|
      @game.value[n-1].should == n unless ((n % 3 == 0) || (n % 5 == 0))
      @game.value[n-1].should == "BUZZ" if n % 5 == 0
      @game.value[n-1].should == "FIZZ" if n % 3 == 0
    end
  end
  
  it "should return the correct values for digits 1 through 10" do
    @game.play
    
    (1..10).each do |n|
      @game.value[n-1].should == n unless ((n % 3 == 0) || (n % 5 == 0))
      @game.value[n-1].should == "BUZZ" if n % 5 == 0
      @game.value[n-1].should == "FIZZ" if n % 3 == 0
    end
  end
  
  it "should return FIZZBUZZ for divisible entries by 3 and 5" do
    @game.play
    
    @game.value[14].should == "FIZZBUZZ"
  end
  
end