class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, :uniqueness => true
  has_many :log_foods
  has_many :foods, through: :log_foods

  # create methods to sum up nutrition?
  def totalCarb
    total = 0;
    self.foods.each {|food| total += food.carb}
    return total
  end

  def totalProtein
    total = 0;
    self.foods.each {|food| total += food.protein}
    return total
  end

  def totalFat
    total = 0;
    self.foods.each {|food| total += food.fat}
    return total
  end
end
