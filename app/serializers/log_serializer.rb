class LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :caldate, :totalCarb, :totalProtein, :totalFat, :loggedFoods
  has_many :log_foods

end
