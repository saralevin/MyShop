class CartItemController < ApplicationController
	def new 
		@cart=Cart.new
	end
	def show
		@all=Cart.select(:product_id)
		@carts=Product.where({id: @all})
	end
	def destroy
		p "aaaaaaaaaaaaaaa"
		productId=Product.find(params[:id]).id
		p "productId"
		p productId
		cart=Cart.where(product_id: productId).first
		p "cart"
		p cart
		p "aaaaaaaaaaaa"
		cart.destroy
		@all=Cart.select(:product_id)
		@carts=Product.where({id: @all})
		respond_to do |format|
    		format.html { render :partial => "table" }
		end
		
		# render :partial => "table"
	end
end
