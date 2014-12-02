class ProductsController < ApplicationController


    def index
		  @products=Product.all
  	end


  	def show #display products details
  		@product = Product.find(params[:id])
      @cart_item=CartItem.new
      @cart_item.product_id=@product.id
   	end


    def create_cart_item #create the product line in the cart_item table
      p '====================================pppp'
      @cart_item=CartItem.new(cart_item_params)
      @cart_item.cart_id=session[:cart_id]
      if @cart_item.save 
        p '222222222222222===============ppppp'
         # redirect_to 'cart_cart_item_index'
          redirect_to :controller => 'cart_item', :action => 'index'
      else
        redirect_to :action => 'index'
      end
    end


    def ajax_bought #count how many bought this product
        @carts_items = CartItem.where("product_id = ?",params[:id] )
        @count=0;
        @carts_items.each do |item|
            @count+=item.quantity
        end
        render plain: @count
    end



   	private
  	  def product_params
  	    params.require(:product).permit(:Name, :Description, :Price, :Thumbnail, :Image)
  	  end


      def cart_item_params
        params.require(:cart_item).permit(:cart_id,:product_id,:quantity)
      end
end
