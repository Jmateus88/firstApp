class StaticPagesController < ApplicationController

  def landing_page
    @featured_product = Product.first
    @products = Product.all
  end

  def index
  end
end
