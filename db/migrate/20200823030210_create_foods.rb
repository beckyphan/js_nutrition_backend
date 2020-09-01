class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :quantity
      t.string :unit
      t.integer :carb
      t.integer :protein
      t.integer :fat

      t.timestamps
    end
  end
end
