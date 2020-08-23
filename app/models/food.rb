class Food < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false}
  validates :quantity, :unit, :carb, :protein, :fat, presence: :true
  has_many :log_foods
end
