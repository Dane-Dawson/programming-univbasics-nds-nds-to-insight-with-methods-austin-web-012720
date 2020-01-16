$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
director_total = 0 
inner_limit = directors_database[row_index][:movies].count
inner_index = 0 
while inner_index < inner_limit do
  director_total += directors_database[row_index][:movies][innder_index][:worldwide_gross]
  inner_index += 1
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  
  result = {}
  row_index = 0 
  while row_index < nds.length do
    result[nds[raw_index]] = gross_for_director
    row_index += 1 
  end
  
  result
  
end
