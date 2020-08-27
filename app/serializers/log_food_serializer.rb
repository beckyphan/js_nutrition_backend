class LogFoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity
  belongs_to :food, serializer: FoodSerializer
  belongs_to :log, serializer: LogSerializer
end
