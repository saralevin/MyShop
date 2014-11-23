class ProductsController < ApplicationController
	

    def index
		  @products=Product.all
  	end


    def new
      @product = Product.new
    end


  	def create 
  		@article = Product.new(product_params)
  		render 'index'
  	end


  	def show
  		@product = Product.find(params[:id])
   	end


   	private
	  def product_params
	    params.require(:product).permit(:Name, :Description, :Price, :Thumbnail, :Image)
	  end
    

end
