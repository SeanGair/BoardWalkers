class HomeController < ApplicationController
  def index
  end

  def aboutus
    @aboutus = AboutUs.first
  end
end
