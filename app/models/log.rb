class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, uniqueness: { scope: :user, message: "each user can have one log daily" }
  has_many :log_foods
  has_many :foods, through: :log_foods

  def nutrition_totals
    total = []
    total_carb = 0;
    total_protein = 0;
    total_fat = 0;

    linked_entries = LogFood.linked(self.id)
    copied_entries = linked_entries
    copied_entries.each do |entry|
      food = Food.find_by(id: entry.food_id)
      quantity = entry.quantity
      multiplier = quantity.to_f / food.quantity
      total_carb += (food.carb * multiplier)
      total_protein += (food.protein * multiplier)
      total_fat += (food.fat * multiplier)
    end

    total.push(total_carb)
    total.push(total_protein)
    total.push(total_fat)
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
