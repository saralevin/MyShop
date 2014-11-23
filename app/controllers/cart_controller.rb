class CartController < ApplicationController
def index
 @carts = Cart.all 
 
end
end
