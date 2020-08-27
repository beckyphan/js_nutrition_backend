class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, :uniqueness => true
  has_many :log_foods
  has_many :foods, through: :log_foods

  def totalCarb
    total = 0;
    self.foods.each do |food|
      linked_entry = LogFood.find_by(log_id: self.id, food_id: food.id)
      quantity = linked_entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.carb * multiplier)
    end
    return total
  end

  def totalProtein
    total = 0;
    self.foods.each do |food|
      linked_entry = LogFood.find_by(log_id: self.id, food_id: food.id)
      quantity = linked_entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.protein * multiplier)
    end
    return total
  end

  def totalFat
    total = 0;
    self.foods.each do |food|
      linked_entry = LogFood.find_by(log_id: self.id, food_id: food.id)
      quantity = linked_entry.quantity
      multiplier = quantity.to_f / food.quantity
      total += (food.fat * multiplier)
    end
    return total
  end

  def loggedFoods
    loggedFoods = []
    self.foods.each {|food| loggedFoods.push({food.name => food.quantity.to_s + " " + food.unit})}
    return loggedFoods
  end
end
