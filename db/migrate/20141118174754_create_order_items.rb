class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
