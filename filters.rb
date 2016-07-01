# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def selection_criteria?(candidate)
  experienced?(candidate)
  enough_points?(candidate)
  knows_languages?(candidate)
  current_application?(candidate)
  old_enough?(candidate)
end

def experienced?(candidate)

  unless candidate.has_key?(:years_of_experience)
    raise InvalidCandidateError, 'candidate must have a :years_of_experience key'
  end
  candidate[:years_of_experience] >= 2  
end 

def enough_points?(candidate)
  unless candidate.has_key?(:github_points)
    raise InvalidCandidateError, 'candidate must have a :github_points key'
  end
  candidate[:github_points] >= 100  
end

def knows_languages?(candidate)
  candidate[:languages].include?('Ruby') ||
  candidate[:languages].include?('Python')
end

def current_application?(candidate)
  candidate[:date_applied] > 15.days.ago.to_date
end

def old_enough?(candidate)
  candidate[:age].to_i > 18
end

def find(id)
  @candidates.select { | candidate | pp candidate if candidate[:id] == id }  
  info_request
end

def all_candidates(candidates)
  pp candidates
  info_request
end
