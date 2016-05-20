#
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    # puts cart.inspect
    # product = Lama::Product.first
    # # add_product_to_cart(product)
    # section = Lama::Section.first
    # product = Lama::Product.create(section: section)
    # products = Lama::Product.all
    # render json: :no_content
  end
end
