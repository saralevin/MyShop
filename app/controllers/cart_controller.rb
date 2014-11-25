class CartController < ApplicationController
def index
  @cart =Cart.find_by user_id: 1
  @cartsitems = CartItem.where("cart_id = ?", @cart.id)
    @SubTotal = 0
    @cartsitems.each do |item|
            @SubTotal += item.product.price* item.quantity
    end 
  @ShoppingCharge =20
  @Total = @SubTotal+@ShoppingCharge
end

def destroy
  @cartsitem = CartItem.find(params[:id])
  @cartsitem.destroy
  redirect_to :action => "index"
  # redirect_to index
  # articles_path איפה הוא מוגדר ???
end
def continue
	redirect_to user
	end
# user
end
