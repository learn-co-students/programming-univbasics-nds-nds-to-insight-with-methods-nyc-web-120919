require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.count do
    name = nds[row_index][:name]
    result[name] = gross_for_director(nds[row_index])
  row_index += 1  
end 
result
end

def gross_for_director(director_data)
 director_total = 0 
 element_index = 0 
  while element_index < director_data[:movies].count do
      director_total += director_data[:movies][element_index][:worldwide_gross]
      element_index += 1 
    end 
    director_total
end
