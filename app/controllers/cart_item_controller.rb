
class CartItemController < ApplicationController

	def index

 		@cartsitems = CartItem.where("cart_id = ?",session[:cart_id])
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
   		@SubTotal = session[:SubTotal]
   		@SubTotal -=@cartsitem.product.price* @cartsitem.quantity
 		  @ShoppingCharge=session[:ShoppingCharge]
   		@Total= @ShoppingCharge+@SubTotal
   		
   		@cartsitem.destroy

   		@cartsitems = CartItem.where("cart_id = ?",session[:cart_id])
	end


 def update_count 
   		@cartsitem = CartItem.find(params[:id])
   		@value=params[:count]
   		@SubTotal = session[:SubTotal] 
   		@SubTotal -=@cartsitem.product.price*( @cartsitem.quantity - @value.to_f)
        @ShoppingCharge = session[:ShoppingCharge]
   		@Total= @ShoppingCharge+@SubTotal
      session[:SubTotal] = @SubTotal
         @cartsitem.update(quantity: @value)
   		@cartsitems = CartItem.where("cart_id = ?",session[:cart_id])
 	
 
 end
end
