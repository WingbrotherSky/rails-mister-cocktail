# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#save url. Find key. Find value. This is drinks key with an array value.
Dose.delete_all
Cocktail.delete_all
Ingredient.delete_all

require 'open-uri'
require 'json'
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
hash = JSON.parse(open(url).read)
ingredient_array = hash["drinks"]
ingredient_array.each do |i|
    Ingredient.create(name: i["strIngredient1"])
end

puts "Created #{Ingredient.count} ingredients."
    

Ingredient.create(name: "HuaJiao")
Ingredient.create(name: "Chili Peppers")
Ingredient.create(name: "Milk")
Ingredient.create(name: "Fire")
Ingredient.create(name: "Tree Bark")
Ingredient.create(name: "Vermouth")
Ingredient.create(name: "Cardboard")
Ingredient.create(name: "Old Socks")
Ingredient.create(name: "Rainbow Dash")
