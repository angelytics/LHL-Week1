def start()
  puts "What is the length of the sign?"
  length = gets.chomp.to_i

  puts "What is the width of the sign?"
  width = gets.chomp.to_i

  puts "How many colors do you want?"
  color_count = gets.chomp.to_i

  tax = 1.15

  dim_cost =  sq_foot_calc(length, width)
  color_cost = num_of_colors(color_count)
  final_cost = (total_cost(dim_cost, color_cost, tax)).round(2)
  
  puts "A #{length}' by #{width}' sign with #{color_count} colors will cost $#{final_cost}."

end

def sq_foot_calc(num_1, num_2)
   dim_cost =  num_1 * num_2 *15
end

def num_of_colors(num)
  color_cost = num < 3 ? num * 10 : num * 15
end

def total_cost(dim_cost, color_cost, tax)
  total_cost = (dim_cost + color_cost) * tax
end

start()