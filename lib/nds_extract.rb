require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  counter1 = 0
  while counter1 < directors_database.length do
    result.store(directors_database[counter1][name], gross_for_director(directors_database, counter1))
    counter1 += 1
	end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data, counter1)
  counter2 = 0
  total = 0
  while counter2 < directors_database[counter1][movies].length do
    total += directors_database[counter1][movies][counter2][3]
    counter2 += 1
  end
  return total
end
