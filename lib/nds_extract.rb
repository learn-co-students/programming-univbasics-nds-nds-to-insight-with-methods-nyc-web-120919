require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {[:name],[:movies]}
  
end
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  index = 0
  director_data.each do |director|   #single director
    while index < director_data[:movies].length do 
      total += director_data[:movies][index][:worldwide_gross]
      index += 1
    end
    # director_data.each do |director|
    # director[:movies]
  end
total
end

