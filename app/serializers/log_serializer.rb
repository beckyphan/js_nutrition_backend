class LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :caldate, :nutrition_totals, :loggedFoods
  has_many :log_foods

end
