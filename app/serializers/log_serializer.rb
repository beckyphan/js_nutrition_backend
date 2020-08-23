class LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :caldate
  has_many :logged_foods

end
