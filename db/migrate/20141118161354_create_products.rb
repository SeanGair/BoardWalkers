class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity
      t.decimal :discount
      t.boolean :new
      t.boolean :demo
      t.boolean :released
      t.boolean :updated

      t.timestamps
    end
  end
end
