class CreateToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :toppings do |t|
      t.string :name
      t.boolean :sugar_free
      t.integer :weight

      t.timestamps
    end
  end
end
