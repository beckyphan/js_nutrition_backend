class FoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :unit, :carb, :protein, :fat
  has_many :log_foods
end
