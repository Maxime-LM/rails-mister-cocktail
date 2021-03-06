# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all

Cocktail.destroy_all
Ingredient.destroy_all

citron = Ingredient.create(name: "citrons verts")
menthe = Ingredient.create(name: "menthe")
eau_gazeuse = Ingredient.create(name: "eau gazeuse")
sucre = Ingredient.create(name: "sirop de sucre")
rhum = Ingredient.create(name: "rhum")
vin_blanc = Ingredient.create(name: "vin blanc")
tequila = Ingredient.create(name: "tequila")

Cocktail.create!(name: "Mojito",   photo: File.open(Rails.root.join('db/fixtures/cocktails/mojito.jpg')))

Dose.create!(description: "6cl", cocktail: Cocktail.first, ingredient: rhum )
Dose.create!(description: "3cl de jus", cocktail: Cocktail.first, ingredient: citron )
Dose.create!(description: "7 feuilles de menthe", cocktail: Cocktail.first, ingredient: menthe )
Dose.create!(description: "remplir le reste du verre", cocktail: Cocktail.first, ingredient: eau_gazeuse )
Dose.create!(description: "2 cl", cocktail: Cocktail.first, ingredient: sucre )

lemontype = Cocktail.create!(name: "Lemon type", photo: File.open(Rails.root.join('db/fixtures/cocktails/citronwine.jpg')))

Dose.create!(description: "5cl", cocktail: lemontype, ingredient: vin_blanc )
Dose.create!(description: "3cl", cocktail: lemontype, ingredient: citron )
Dose.create!(description: "remplir le reste du verre", cocktail: lemontype, ingredient: eau_gazeuse )

mocking = Cocktail.create!(name: "Mockingbird", photo: File.open(Rails.root.join('db/fixtures/cocktails/mocki.jpg')))
Dose.create!(description: "5cl", cocktail: mocking, ingredient: tequila )
Dose.create!(description: "1cl", cocktail: mocking, ingredient: citron )

