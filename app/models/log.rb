class Log < ApplicationRecord
  belongs_to :user
  validates :caldate, :uniqueness => true
  has_many :log_foods
  has_many :foods, through: :log_foods
end
