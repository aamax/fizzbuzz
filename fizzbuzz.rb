#require "pry"

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
    case
    when (n % 3 == 0) && (n % 5 == 0)
      then @value <<"FIZZBUZZ"
    when n % 3 == 0
      the @value << "FIZZ"
    when n % 5 == 0
      the @value == "BUZZ"
    else @value << n
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
  
   it "test all values from 1 to 100" do
     @game.play
    
    (1..100).each do |n|
      @game.value[n-1].should == n unless ((n % 3 == 0) || (n % 5 == 0))
      @game.value[n-1].should == "FIZZBUZZ" if ((n % 3 == 0) && (n % 5 == 0))
      @game.value[n-1].should == "BUZZ" if n % 5 == 0
      @game.value[n-1].should == "FIZZ" if n % 3 == 0
    end
   
  end
  
end