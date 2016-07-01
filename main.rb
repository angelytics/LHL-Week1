# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require_relative 'candidates'
require_relative 'filters'
require_relative 'error'

def qualified_candidates(candidates)
  qualified = candidates.select { |candidate| selection_criteria?(candidate) }
  pp qualified
end

def id_search
  raise '@candidates must be an Array' if @candidates.nil?
  puts "Below are the ID numbers for the list of applicants."
  @candidates.select { | candidate | pp candidate[:id] }
  puts "\nPlease enter the ID number to get more information about the applicant: "
  print ">> "
  id_num = gets.chomp.to_i
  find(id_num)
end

def info_request
  puts "\nYou've received lots of applications for the position."
  puts "Choose from the list below the information you want."
  puts "\n- List of ALL applicants"
  puts "- List of QUALIFIED applicants"
  puts "- Find a candidate by ID"
  puts "- EXIT this program"
  print "\n>> "
  info_requested = gets.chomp.downcase
    
  case info_requested
  when ('all') then all_candidates(@candidates)
  when ('qualified') then qualified_candidates(@candidates)
  when ('id') then id_search
  when ('exit') then exit (0)
  else info_request
  end
end

info_request











#qualified_candidates(@candidates[1])

=begin
  @candidates.each do | candidate |
    candidate.each do | key, value |
      puts key 
    end
  end
=end