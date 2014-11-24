class CartController < ApplicationController
def index
  @cart =Cart.find_by user_id: 1
  @cartsitems = CartItem.where("cart_id = ?", @cart.id)
  @SubTotal =@cartsitems.sum(:price)
  @ShoppingCharge =0
  @Total =0
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
