
#https://github.com/inklin/lighthouse-labs/blob/master/W1D2/yuppie_vancouverite/renter.rb
# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)
  baller && (furnished || rent < 2100)
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
###

# yes
puts "Furnished, Baller, with rent > 2100:"
puts "#{rent?(true, 3000, true)}"

# yes
puts "Furnished, Baller, with rent < 2100:"
puts "#{rent?(true, 1000, true)}"

# yes
puts "Furnished, not Baller, with rent > 2100"
puts "#{rent?(true, 3000, false)}"


puts "Furnished, not Baller, with rent < 2100"
puts "#{rent?(true, 1000, false)}"

# yes
puts "Not Furnished, Baller, with rent > 2100"
puts "#{rent?(false, 3000, true)}"

# yes 
puts "Not Furnished, Baller, with rent < 2100"
puts "#{rent?(false, 1000, true)}"

# yes
puts "Not Furnished, not Baller, with rent > 2100:"
puts "#{rent?(false, 3000, false)}"

puts "Not Furnished, not Baller, with rent < 2100"
puts "#{rent?(false, 1000, false)}"



=begin

#https://gist.github.com/amarbirgill/443df39e080584d63d4a
# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)
  # if baller && furnished || rent < 2100
  #   return true
  # else
  #   return false
  # end
  # if
  baller && (furnished || rent < 2100)
  #   return true
  # else
  #   return false
  # end
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###
if rent?(true, 2000, true) 


#"baller apartment, furnished and 2000" 
puts rent?(true, 2000, true) 
#"baller apartment, furnished and 2100"  
puts rent?(true, 2100, true)
#"baller apartment, not furnished and 2000" 
puts rent?(false, 2000, true)
#"baller apartment, not furnished and 2100" 
puts rent?(false, 2100, true)

end

=end

#https://gist.github.com/MattMcLennan/df5181a4706998344508#file-renter-rb-L1
# must be baller and either furnished or rent cheaper than 2100
=begin
def rent?(furnished, rent, baller)
  if baller && furnished || rent < 2100
    return true
  else
    return false
  end
end
###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###
puts rent?(false,2300,true)
=end
#errors: it is checking wether it is furnished or if the rent is < 2100
# We need to change it to check if rent is < 2100 OR if the apartment is a baller and furnished


#Edit 1 

=begin
def rent?(furnished, rent, baller)
  if rent<2100 || (baller && furnished)
    return true
  else
    return false
  end
end
puts rent?(true,1900,false)
=end

=begin

#FINAL CODE PUBLISHED WITH FUNCTION ALL ON ONE LINE
def rent?(furnished, rent, baller)
  return rent<2100 || (baller && furnished)
end

puts rent?(true,1900,true)

=false

=begin

# https://gist.github.com/stabmyhead/f7f3f00cde79f853efa3
# METHOD CONTRACT:
# Only wants to rent if baller = true 
# If this isn't true, they don't want it at all
# Either furnished OR rent < 2100 = true
# Need to add order of operations in there to 
# Removed if else statement because this comparison automatically evaluates true or false

def rent?(baller, furnished, rent)
  baller && (furnished || rent < 2100)
end

puts rent?(true, true, 1400)
puts rent?(true, true, 2400) 
puts rent?(true, false, 1800)
# Evaluates false because both furnished and rent evaluates false
puts rent?(true, false, 2400)
# Because of short circuiting, these will never evaluate true if the baller is false
puts rent?(false, false, 1800)
puts rent?(false, false, 2400) 

=end

=begin

# https://gist.github.com/nfamula/94739891e3a582dff533
# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)
return "true" if baller && (furnished || rent < 2100)
end

###
puts rent?(true, 1000, false)
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###

=end

