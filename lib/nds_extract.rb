require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  directors_db = directors_database
  hash_result = Hash.new()
  
  dir_iterator = 0
  while dir_iterator < directors_db.size do
    director = directors_db[dir_iterator]
    hash_result[director[:name]] = gross_for_director(director)
    dir_iterator += 1
  end
  
  return hash_result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    total_grosses = 0 
    movies_array = director_data[:movies]
    movies_iterator = 0 
    
    while movies_iterator < movies_array.size do
      total_grosses += movies_array[movies_iterator][:worldwide_gross]
      movies_iterator += 1
    end
    
    return total_grosses
end
