# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "coffee")
Ingredient.create(name: "cidre")

Cocktail.create(name: "Coffe Breton")

Dose.create(description: "Shot coffe", cocktail: Cocktail.first, ingredient: Ingredient.fourth )
Dose.create(description: "Shot Cidre", cocktail: Cocktail.first, ingredient: Ingredient.last )
Dose.create(description: "Shot lemon", cocktail: Cocktail.first, ingredient: Ingredient.first )

Cocktail.create(name: "Lemon ice")
Dose.create(description: "Shot lemon", cocktail: Cocktail.last, ingredient: Ingredient.first )
Dose.create(description: "Shot ice", cocktail: Cocktail.last, ingredient: Ingredient.second )

# puts 'Creating doses...'
# restaurants_attributes = [
#   {
#     description:         'Dishoom',
#     address:      '7 Boundary St, London E2 7JE',
#     description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
#     stars:        5
#   },
