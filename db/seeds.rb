# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  foods = Food.create([
    {name: "asparagus", quantity: 5, unit: "spear(s)", carb: 4, protein: 2, fat: 0},
    {name: "bell pepper", quantity: 1, unit: "medium unit(s)", carb: 6, protein: 1, fat: 0},
    {name: "broccoli", quantity: 1, unit: "medium stalk(s)", carb: 8, protein: 4, fat: 0.5},
    {name: "celery", quantity: 2, unit: "medium stalks(s)", carb: 4, protein: 0, fat: 0},
    ])

  quick_add = [
    ["apple", 1, "large unit(s)", 34, 0, 1],
    ["avocado", 0.2, "medium unit(s)", 3, 4.5, 1],
    ["banana", 1, "medium unit(s)", 30, 0, 1],
    ["cherries", 1, "cup(s)", 26, 0, 1],
    ["grapes", 0.75, "cup(s)", 23, 0, 0],
    ["pineapple", 2, '3" x 3/4" thick slice(s)', 13, 0, 1],
    ["strawberries", 8, "medium unit(s)", 11, 0, 1],
    ["watermelon", 2, "diced cup(s)", 21, 0, 1]
  ]

  formatted_foods = []

  quick_add.each do |entry|
    formatted_foods.push({name: entry[0], quantity: entry[1], unit: entry[2], carb: entry[3], protein: entry[4], fat: entry[5]})
  end
