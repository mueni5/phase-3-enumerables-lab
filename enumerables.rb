require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, return an array of strings with the names of each spicy food
def get_names(spicy_foods)
  get_names = spicy_foods.collect do |names|
    names[:name]
  end
end

# given an array of spicy foods, return an array of hashes where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.select do |hot_food|
    hot_food[:heat_level] > 5
  end
end

# given an array of spicy foods, output to the terminal each spicy food in the following format:
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level_emoji = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level_emoji}"
  end
end

# given an array of spicy foods and a string representing a cuisine, return a single hash
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

# given an array of spicy foods, return an array of hashes sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by{ |food| food[:heat_level] }
end

# given an array of spicy foods, output to the terminal ONLY the spicy foods that have a heat level greater than 5,
# in the following format: Buffalo Wings (American) | Heat Level: 🌶🌶🌶
def print_spiciest_foods(spicy_foods)
  spiciest_foods = spicy_foods.select { |food| food[:heat_level] > 5 }

  spiciest_foods.each do |food|
    heat_level_emoji = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level_emoji}"
  end
end

# given an array of spicy foods, return an integer representing the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  average = spicy_foods.sum { |food| food[:heat_level] }
  average / 3
end

