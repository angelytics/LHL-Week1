## Conditionals

if condition
  do_things()
elsif # in JS this is `else if`
  do_other_things()
else
  do_something_no_one_expects!
end

# Same thing as above, except note that: 
#  1. You don't need the () when calling a method that takes no parameters in ruby
#  2. If statemenet mentioned after the action to take if evaluation is true
#  3. Only good for one-liners
do_things if condition 

# Opposite / inverse of the if. Basically an `if !condition`
do_other_things unless condition

## Iterating

values = ['a', 'b', 'c'] # array

values.each do |item|
  # do something with item
end

## Hashes

my_hash = {}

# using strings for keys
my_hash = { "key" => "value", 
            "key2" => "value2" }

# using symbols for keys
my_hash = { key: 'value', key2: 'key2' } 

# using symbols for keys (original syntax, still widely used)
my_hash = { :key => 'value', :key2 => 'key2' } 

class Car
  attr_accessor :make
  attr_accessor :model
  
  # When Car.new is called, this method is run
  # Therefore, for this class, you must pass in 2 variables (make and model) when creating a new instance of it
  def initialize(make, model)
    @make = make
    @model = model
  end
end

# .new calls initialize above
# Every class has an initialize method

my_car = Car.new('Toyota', 'Matrix')
my_other_car = Car.new('Ford', 'Focus')