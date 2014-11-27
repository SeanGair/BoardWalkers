class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:created_at).reverse
  end

  def boardgames
    @products = Product.where('category_id = 2')
  end

  def tradingcards
    @products = Product.where('category_id = 1')
  end

  def miniatures
    @products = Product.where('category_id = 4')
  end

  def roleplaying
    @products = Product.where('category_id = 5')
  end

  def accessories
    @products = Product.where('category_id = 3')
  end

  def show
  end

  def search_results
    wildcard_keywords = "%#{params[:search_keywords]}%"
    @search = Product.where('name LIKE ?', wildcard_keywords)
    @category_search = Category.where('name LIKE ?', wildcard_keywords)
  end
end
