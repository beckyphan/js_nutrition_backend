# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  foods = Food.create([
    {name: "asparagus", quantity: 5, unit: "spears", carb: 4, protein: 2, fat: 0},
    {name: "bell pepper", quantity: 1, unit: "medium", carb: 6, protein: 1, fat: 0},
    {name: "broccoli", quantity: 1, unit: "medium stalk", carb: 8, protein: 4, fat: 0.5},
    {name: "celery", quantity: 2, unit: "medium stalks", carb: 4, protein: 0, fat: 0},        
    ])
