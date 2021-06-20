class CreateCakeToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :cake_toppings do |t|
      t.references :cake, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true

      t.timestamps
    end
  end
end
