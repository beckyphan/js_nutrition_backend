class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, :uniqueness => true
  has_many :log_foods
  has_many :foods, through: :log_foods

  def totalCarb
    total = 0;
    linked_entries = LogFood.linked(self.id)
    copied_entries = linked_entries
    copied_entries.each do |entry|
      food = Food.find_by(id: entry.food_id)
      quantity = entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.carb * multiplier)
    end
    return total
  end

  def totalProtein
    total = 0;
    linked_entries = LogFood.linked(self.id)
    copied_entries = linked_entries
    copied_entries.each do |entry|
      food = Food.find_by(id: entry.food_id)
      quantity = entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.protein * multiplier)
    end
    return total
  end

  def totalFat
    total = 0;
    linked_entries = LogFood.linked(self.id)
    copied_entries = linked_entries
    copied_entries.each do |entry|
      food = Food.find_by(id: entry.food_id)
      quantity = entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.fat * multiplier)
    end
    return total
  end

  def loggedFoods
    loggedFoods = []
    linked_entries = LogFood.linked(self.id)
    copied_entries = linked_entries
    copied_entries.each do |entry|
      food = Food.find_by(id: entry.food_id)
      loggedFoods.push(entry.quantity.to_s + " " + food.unit + " of " + food.name)
    end
    return loggedFoods
  end
end
