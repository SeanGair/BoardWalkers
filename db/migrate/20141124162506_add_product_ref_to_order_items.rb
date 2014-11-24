class AddProductRefToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :product, index: true
  end
end
