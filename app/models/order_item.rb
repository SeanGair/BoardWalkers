class OrderItem < ActiveRecord::Base
	has_one :product

	validates :price, :quantity, presence: true
end
