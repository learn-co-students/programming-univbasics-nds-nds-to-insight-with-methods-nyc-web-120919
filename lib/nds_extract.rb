require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  counter1 = 0
  while counter1 < nds.length do
    directors = nds[counter1]
    result[directors[:name]] = gross_for_director(directors)
    counter1 += 1
	end
	result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  counter2 = 0
  total = 0
  while counter2 < director_data[:movies].length do
    total += director_data[:movies][counter2][:worldwide_gross]
    counter2 += 1
  end
  return total
end
