class Product < ActiveRecord::Base
  belongs_to :category

  mount_uploader :image, ImagesUploader

  validates :name, :price, :stock_quantity, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
