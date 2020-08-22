class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :carb_grams, :protein_grams, :fat_grams
end
