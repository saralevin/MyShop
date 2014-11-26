class ProductsController < ApplicationController
	

    def index
		  @products=Product.all
  	end


  	def show
  		@product = Product.find(params[:id])
   	end


    def create
      @product=Product.find(params[:id])
#      if @product.save
 #       redirect_to @article
  #    else
   #     render 'new'
    #  end
    #  @curtItem = CurtItem.new(:cart=>Cart.find_by user_id: 1, :product=>@product.id, :quantity=> 1);
      redirect_to :controller => 'cart', :action => 'index', :id => 1
    end


   	private
	  def product_params
	    params.require(:product).permit(:Name, :Description, :Price, :Thumbnail, :Image)
	  end


    #form, i took it from the basuc setting of css. dont remove!
end
