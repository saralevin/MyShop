class UserController < ApplicationController

  def edit
  	 @cart = Cart.find(params[:id])
  	 p"^^^^^^^^^^^^^^^^^^^^^^^^"
p @cart
p @cart.user_id
   @user = User.find(@cart.user_id)
   p @user
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
    	 redirect_to  :action => "end"
 	 else
  	  render 'edit'
 	 end
  end

  def end
  end

private
  def user_params
    params.require(:user).permit( :first_name,:last_name ,:address1 ,:address2 ,:city ,:state ,:country ,:zip ,:phone ,:email )
  end

end
