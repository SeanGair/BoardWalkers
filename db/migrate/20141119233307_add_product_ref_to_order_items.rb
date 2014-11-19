class AddProductRefToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :product, :reference
  end
end
