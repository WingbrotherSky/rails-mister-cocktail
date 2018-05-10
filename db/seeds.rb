# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#save url. Find key. Find value. This is drinks key with an array value.


require 'open-uri'
require 'json'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
hash = JSON.parse(open(url).read)
ingredient_array = hash["drinks"]
ingredient_array.each do |i|
    Ingredient.create(name: i["strIngredient1"])
end

puts "Created #{Ingredient.count} ingredients."
    

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "milk")
# Ingredient.create(name: "garlic")
# Ingredient.create(name: "hot sauce")
# Ingredient.create(name: "vermouth")
# Ingredient.create(name: "sours")
# Ingredient.create(name: "hua jiao")
