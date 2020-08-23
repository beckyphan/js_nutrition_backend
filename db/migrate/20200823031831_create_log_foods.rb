class CreateLogFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :log_foods do |t|
      t.integer :quantity
      t.belongs_to :log, null: false, foreign_key: true
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
