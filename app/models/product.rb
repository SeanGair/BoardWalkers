class Product < ActiveRecord::Base
	belongs_to :category
	has_many :order_item

	validates :name, :price, :stock_quantity, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
