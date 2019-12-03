require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  index1 = 0
  index2 = 0
  result = {}
  
  while directors_database[index1]
    sum = 0
    while directors_database[index1][:movies][index2]
      sum += directors_database[index1][:movies][index2][:worldwide_gross]
      index2 += 1
    end
    result.merge!(Hash[directors_database[index1][:name], sum])
    index2 = 0
    index1 += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum = 0
  index = 0
  while director_data[:movies][index] do
    sum += director_data[:movies][index][:worldwide_gross]
    index += 1
  end
  return sum
end
