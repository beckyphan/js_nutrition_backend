class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :carb_grams
      t.integer :protein_grams
      t.integer :fat_grams

      t.timestamps
    end
  end
end
