$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 
  while director_index < nds.length do 
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end


def gross_for_director(director_data)
  gross = 0 
  director_index = 0 
  
  while director_index < director_data[:movies].length do
    gross += director_data[:movies][director_index][:worldwide_gross]
    director_index += 1 
  end
  gross 
end
