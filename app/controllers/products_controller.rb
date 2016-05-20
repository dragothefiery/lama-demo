class ProductsController < ApplicationController
  def index
    @products = Lama::Product.all
  end
end
