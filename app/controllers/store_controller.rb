
class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products.to_json }
    end
  end
end
