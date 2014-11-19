class AddOrderRefToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :order, :reference
  end
end
