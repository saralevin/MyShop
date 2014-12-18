class ProductsController < ApplicationController


def show
  @new_item = CartItem.new
	@product = Product.find( params[:id] )	 
end


def amountProduct
  @result = CartItem.where(productCode: params[:code] ).sum(:quantity)
 
  respond_to do |format|
    format.json  { render :json => @result.to_s }
  end
end


def index
end


def insertItem
  @item = CartItem.new(item_params)
  @item.totalSum = @item.totalSum.to_i * @item.quantity.to_i

  if !@item.valid?
     @products = Product.all
     render 'index'
  else
    if @item.save
      render 'cart_item/list'
    else
      render 'show'
    end
  end

end



private

  def item_params
    params.require(:cart_item).permit(:cartId, :productCode, :quantity, :totalSum)
  end


end



