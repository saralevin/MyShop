class CartController < ApplicationController
def index
 @rr = User.all
 p '================================'
 p @rr
  @cartsitems = CartItems.all 
  #find(params[1])
end
end
