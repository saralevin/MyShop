class CartItemController < ApplicationController
	
	def list
		 # user = session[:user];
		 user = "1";
		 @myCart = Cart.where(userId: '1');
		# p "================================================"
		# p @myCart.productCode;
		# @xx = Product.find('1');
		# p @xx.description;
		
	end

	def removeProduct
	 	@carts.delete('???????');
	 	render "list"
	end 
	


#---------------------
	def shipping
		@listContries = ["Afghanistan","Albania","Algeria","Andorra","Angola","Argentina","Armenia","Aruba",
						"Australia","Austria","Azerbaijan","Bangladesh","Barbados","Belarus","Belgium","Belize",
						"Benin","Bhutan","Bolivia","Botswana","Brazil","Brunei","Bulgaria","Israel"];
	end
	def saveAndGo
		user = session[:user];
		@users.each do |u|
		 	if u.userId==user
		 		user=u;
		 		break;
		 	end
		 end
		 user.country=countries.value;
		 user.streetAddress=address1.value+" "+address2.value;
		 user.city=inputCity.value;
		 user.state=state.value;
		 user.zipCode=zip.value;
		 user.phoneNumber=phone.value;
		 render "products/index"
	end

	def insertIn
		Products.new(:code => "Hello", :description => "Admin", :price => 10, :thumbnail => "LongSleeveShirtsTwoPack.png")
		render "e"
	end

	

end
