class LogFood < ApplicationRecord
  belongs_to :log
  belongs_to :food
  scope :linked, ->(log_id) { where("log_id = ?", log_id) }
end
