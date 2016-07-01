@states_cities = {
   
   :OR => {
   
     :states => 'Oregon',
     :cities => ['Portland', 'Richmond'],
     :taxes => 6.8
  
  },
  
    :FL => {
   
     :states => 'Florida',
     :cities => ['Miami', 'Jacksonville'],
     :taxes => 9.5
  
  },
    
    :CA => {
   
     :states => 'California',
     :cities => ['San Francisco', 'Los Angeles'],
     :taxes => 12.5
  
  },
  
    :NY => {
   
     :states => 'New York',
     :cities => ['Manhattan', 'Albany'],
     :taxes => 8.3
  
  },
  
    :MI => {
   
     :states => 'Michigan',
     :cities => ['Detroit', 'Ann Arbor'],
     :taxes => 6.6
  
  },
  
    :IL => {
   
     :states => 'Illinois',
     :cities => ['Chicago', 'Springfield'],
     :taxes => 7.5
  
  },
  
    :TX => {
   
     :states => 'Texas',
     :cities => ['Austin', 'Houston'],
     :taxes => 5.7
  
  }
  
}

def start
  puts "Please enter one of the state abbreviations to learn more."
  puts "OR, FL, CA, NY, MI, IL or TX."
  print ">> "
  request = gets.chomp.upcase.to_sym
  
  description = describe_state(request)
  puts "\n#{request} is for #{description[:states]} which has the following two cities:"
  puts description[:cities].flatten
  
  puts calc_state_tax(description[:states], description[:taxes])
  
  puts "\nNow enter a city from the list below to find out what state it's in."
  @states_cities.each do | key, hash |
      hash[:cities].each { | city | puts city }
    end
  print ">> "
  city = gets.chomp.capitalize
  puts determine_state (city)
  
  play_again
end

# method should be descriptive to content
def describe_state(state_code)
  @states_cities[state_code] == nil ? start : @states_cities[state_code]
end

def calc_state_tax(state, tax_rate)
  puts "\nPlease enter your household income to determine your tax rate."
  input.is_a == integer ? nil : calc_state_tax(num_1, num_2)
  state_tax = (input * (tax_rate / 100)).round(2)
  return "#{state} has a #{tax_rate}% tax rate which makes your annual tax is $#{state_tax}."
end

def determine_state (place)
  @states_cities.each do | key, hash |
    hash[:cities].each do | city | 
        if city == place  
          return hash[:states]
        else
          nil
        end
    end
  end
end

def play_again
  puts "Would you like another turn? (Yes / No)."
  answer = gets.chomp.downcase
  answer.include?('y') ? start() : exit 
end
  
start

=begin

def flatten_all(val)
  case val
  when Hash
    val.flat_map { |k, v| [k, *flatten_all(v)] }
  when Array
    val.flat_map(&method(:flatten_all))
  else
    val
  end
end

def flatten_breakify(val)
  case val
  when Hash
    val.map { |k, v| "#{k}<br>#{flatten_breakify(v)}" }.join('<br>')
  when Array
    val.map(&method(:flatten_breakify)).join('<br>')
  else
    val
  end
end

# Task 3
# method should return the string not output
# return details of state 
def describe_state()

# 'CA' is for California.  It has 2 major cities:  San Francisco, Los Angeles.

end

# Task 4
# Declare a taxes hash
taxes = {

# e.g. CA: 7.5

}

# Task 5
# Calculates tax paid given dollars spent
def calculate_tax(state_code, amount)

# calculation based on state and figure rounded 2 decimals

end

# Task 6
# returns state code for city location
def find_state_for_city(city_name)

# enter San Francisco return CA

end

# Task 7
# Refactor code such that one hash used for state & cities

# Task 8
# edge cases:  unknown state code for calculate_tax method
# edge cases:  'MI' is equivalent to :MI

# Task 1
# add 2 additional states
states = {
  
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan',
  IL: 'Illinois',
  TX: 'Texas'

}

# Task 2
# add 2 to 4 cities
cities =  {
  
  OR: 'Seattle', 'Portland',
  FL: 'Miami', 'Jacksonville',
  CA: 'San Francisco', 'Los Angeles'
  NY: 'Manhattan', 'Albany',
  MI: 'Detroit', 'Ann Arbor',
  IL: 'Chicago', 'Springfield'
  TX: 'Houston', 'Austin'

}


=end