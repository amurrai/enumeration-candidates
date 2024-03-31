# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

@candidates.each do |candidate|
  if experienced?(candidate)
    puts "Candidate ID: #{candidate[:id]} is experienced"
  else
    puts "Candidate ID: #{candidate[:id]} is NOT experienced"
  end
end

pp find(7)
pp find(0)

puts "Qualified candidates"
pp qualified_candidates(@candidates)

puts "Ordered by qualification"
pp ordered_by_qualification(@candidates)