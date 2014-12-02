
class CartItemController < ApplicationController

	def index
		  @cart =Cart.find()
 		@cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
   		@SubTotal = 0
    	@cartsitems.each do |item|
      	      @SubTotal += item.product.price* item.quantity
    		end 
  		@ShoppingCharge =20
 	    @Total = @SubTotal+@ShoppingCharge
 		 session[:SubTotal] = @SubTotal
 		 session[:ShoppingCharge] = @ShoppingCharge
	end

	def destroy

   		@cartsitem = CartItem.find(params[:id])
         p @cartsitem
   		@SubTotal = session[:SubTotal]
   		@SubTotal -=@cartsitem.product.price* @cartsitem.quantity
 		@ShoppingCharge=session[:ShoppingCharge]
   		@Total= @ShoppingCharge+@SubTotal
   		
   		@cartsitem.destroy

   		@cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
	end

	def calculation_price
		@cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
   		@SubTotal = 0
    	@cartsitems.each do |item|
      	      @SubTotal += item.product.price* item.quantity
    		end 
  		@ShoppingCharge =20
 	    @Total = @SubTotal+@ShoppingCharge
	end

 def update_count 
   		@cartsitem = CartItem.find(params[:id])
   		@value=params[:count]
   		@SubTotal = session[:SubTotal] 
   		@SubTotal -=@cartsitem.product.price*( @cartsitem.quantity - @value.to_f)
        @ShoppingCharge = session[:ShoppingCharge]
   		@Total= @ShoppingCharge+@SubTotal
   		
   		# @cartsitem.up
         @cartsitem.update(quantity: @value)
   		@cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
 	
 		# @cartsitems params[:id]
 end
end
#     def initialize
#     	super
#     	@cartsitems 
# 		@SubTotal
# 		@ShoppingCharge =20
# 	end

# 	def index
		
# 		@cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
#  		@SubTotal = 0
#     	  @cartsitems.each do |item|
#       	      @SubTotal += item.product.price* item.quantity
#     		end 
#       @Total = @SubTotal+ @ShoppingCharge
# 	end

# 	def destroy
# 		 @cartsitems = CartItem.where("cart_id = ?",params[:cart_id])
# 		p "cart-items========================================" 
# 		p @cartsitems
# 		p "id====="
# 		p params[:id]
# 			@cartsitem = @cartsitems.find(params[:id])
# 			p "SubTotal: ========"
# 			p @SubTotal
# 		@SubTotal-=@cartsitem.product.price * @cartsitem.quantity
 
#    		p "=====@cartsitem====="+@cartsitem
#    		@cartsitem.destroy
   		
# 	end

# 	def calculation_price
		
# 		# @@SubTotal-=
   	
  		
 	    
# 	end

# end
