class LogFoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity
  belongs_to :log, :food
end
