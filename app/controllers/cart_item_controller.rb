class CartItemController < ApplicationController
	helper_method :calcSubTotal;
	helper_method :calcPriceItem;
	def list
		 
		 @cartIdOfUser = "1";
		 @myCart = CartItems.where(cartId: @cartIdOfUser);
	end

	def removeProduct()
	 	CartItems.find_by(productCode:params["productCode"]).destroy;
	 	render :js => "window.location = '/cart_item/list'"
	end 

	def changeQuantity()
		@pr = CartItems.find_by(productCode:params["productCode"]);
		@pr.quantity = params["selectbox"];
		@pr.save;
		calcPriceItem(params["productCode"],params["selectbox"]);
		render :js => "window.location = '/cart_item/list'"
	end

	def calcPriceItem(code,quantity)
		(((Product.find_by code: code).price).to_i*quantity.to_i)
	end

	def calcSubTotal
		sum=0;
		@myCart.each do |productInCart|
			sum+=((Product.find_by code: productInCart.productCode).price).to_i*(productInCart.quantity).to_i;
		end
		return sum;
	end



	def shipping
		@listContries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Argentina","Armenia","Aruba",
						"Australia","Austria","Azerbaijan","Bangladesh","Barbados","Belarus","Belgium","Belize",
						"Benin","Bhutan","Bolivia","Botswana","Brazil","Brunei","Bulgaria","Israel"];
		#userId = session[:userCart];
		userId="2";
		@user=User.find(userId);
	end
end

