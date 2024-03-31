# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.detect { |h| h[:id] == id}
end
  
def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)
  result = []
  candidates.each do |candidate|
    if experienced?(candidate) && git100?(candidate) && ruby_python?(candidate) && recent?(candidate) && age?(candidate)
      result << candidate
    end
  end
  return result
end

  # More methods will go below

def git100?(candidate)
  if candidate[:github_points] >= 100
    return true
  else
    return false
  end
end

def ruby_python?(candidate)
  if candidate[:languages].include? 'Ruby' || 'Python'
    return true
  else
    return false
  end
end

def recent?(candidate)
  if Date.today - candidate[:date_applied] <= 15
    return true
  else
    return false
  end
end

def age?(candidate)
  if candidate[:age] > 17
    return true
  else
    return false
  end
end

def ordered_by_qualification(candidates)
  return candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
end
