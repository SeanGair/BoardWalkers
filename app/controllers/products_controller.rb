class ProductsController < ApplicationController
	def index
	  @products = Product.all.order(:created_at).reverse
	end

	def boardgames
	  @products = Product.where("category_id = 2")
	end

	def tradingcards
	  @products = Product.where("category_id = 1")
	end

	def miniatures
	  @products = Product.where("category_id = 4")
	end

	def roleplaying
	  @products = Product.where("category_id = 5")
	end

	def accessories
      @products = Product.where("category_id = 3")
	end

	def show
	end
end
