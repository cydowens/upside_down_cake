class CreateCakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cakes do |t|
      t.string :name
      t.boolean :sugar_free
      t.integer :num_of_layers
      t.references :bakery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
