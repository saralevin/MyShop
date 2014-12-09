class ProductsController < ApplicationController


def new
	 @product = Product.new
end


def show
	 @product = Product.find(params[:id])	
end

def index
  @products = Product.all
end

def say_when
  render_text "<p>The time is </p>"
end



end
