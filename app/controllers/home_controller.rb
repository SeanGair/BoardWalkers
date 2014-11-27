class HomeController < ApplicationController
  def index
    @updated = Product.where('updated = ?', true)
    @new = Product.where('new = ?', true)
    @comingsoon = Product.where('released = ?', false)
  end

  def aboutus
    @aboutus = AboutUs.first
  end
end
