
def shakil_the_dog
  in_room = true

  while in_room
    puts "How do you want to play with Shakil?"
    puts "You can either say Meow, Woof, Stop, Treat, Go Away, or anything else you like?"
    input = gets.chomp.downcase

    if go_away(input)
      in_room = false
    else
      puts get_response(input)
    end
  end
end

def get_response(spoken)
  response = ""
  return response if no_response(spoken)
  
  case spoken
  
  when "woof" then response = "WOOF! WOOF! WOOF!"
  when "meow" then response = "WOOF! WOOF! WOOF! WOOF! WOOF!"
  when "treat" then response = "YUMMY!"
  when "stop" then response = "Silence is GOLDEN!"
  else
    response = "WOOF!"
  end
  response
end

def go_away(spoken)
  spoken == "go away"
end
 
shakil_the_dog
