class OrderItem < ActiveRecord::Base
	validates :price, :quantity, presence: true
end
