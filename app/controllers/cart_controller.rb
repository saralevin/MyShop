class CartController < ApplicationController
def index
 @rr = User.all
  @cartsitems = CartItems.all 
  #find(params[1])
end
end
