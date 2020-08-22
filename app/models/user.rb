class User < ApplicationRecord
  has_secure_password
  validates :name, :email, :carb_grams, :protein_grams, :fat_grams, :password, presence: :true
  validates :email, uniqueness: { case_sensitive: false}
  has_many :logs
end
