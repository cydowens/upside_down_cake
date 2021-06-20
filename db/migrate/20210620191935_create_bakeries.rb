class CreateBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :bakeries do |t|
      t.string :name
      t.boolean :is_open
      t.integer :num_of_cakes

      t.timestamps
    end
  end
end
