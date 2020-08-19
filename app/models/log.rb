class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, :uniqueness => true
  has_many :logged_foods
  has_many :foods, through: :logged_foods
end
