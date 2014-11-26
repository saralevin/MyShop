class CartController < ApplicationController
   # respond_to :html, :js
def index
  @cart =Cart.find_by user_id: 1
  @cartsitems = CartItem.where("cart_id = ?", @cart.id)
    @SubTotal = 0
    @cartsitems.each do |item|
            @SubTotal += item.product.price* item.quantity
    end 
  @ShoppingCharge =20
  @Total = @SubTotal+@ShoppingCharge
  # respond_to do |format|
  #   format.html
  #   format.json
  # end
end

def destroy
   @cartsitem = CartItem.find(params[:id])
  @cartsitem.destroy
  
    @cart =Cart.find_by user_id: 1
  @cartsitems = CartItem.where("cart_id = ?", @cart.id)

end
def continue
	redirect_to user
	end
# user
end
