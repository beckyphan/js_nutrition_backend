class LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :caldate
  has_many :log_foods

end
