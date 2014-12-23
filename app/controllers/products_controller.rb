class ProductsController < ApplicationController


def new
	session[:MyId] = params[:id]
	@product = Product.find(session[:MyId] )	
end


def show
	@carts = Cart.all
	@product = Product.find( params[:id] )	
end

def index
  @products = Product.all
end


def insertCard

  @carts = Cart.new(cart_params)
 
  @carts.save
end
 


private

  def cart_params
    params.require(:carts).permit(:userId, :productCode, :quantity, :totalSum)
  end
 




end
