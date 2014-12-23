class UserController < ApplicationController

	def saveAndGo
		userId="2";
		@user=User.find(userId);
		@user.update (userDetails);
		
		redirect_to "/products/index"
	end

	def userDetails
      params.require(:user).permit(:firstName,:lastName,:country, :streetAddress,:city,:state,:zipCode,:phoneNumber)
    end

end
