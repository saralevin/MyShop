class UserController < ApplicationController

def index
	@new_user = User.new
  render 'login'
end

def login
end


def createUser
  @user = User.new(user_params)

  if !@user.valid?
    @new_user = User.new
    render 'login'
  else
    @findUser = User.find_by email: @user.email
    if @findUser
      create_user_cart ( @findUser.id )
    else
      if @user.save
        create_user_cart ( @user.id )
      else
        @new_user = User.new
        render 'login'
      end
    end
  end
end


private

  def create_user_cart (userIdd)
    @user_cart = Cart.new(:userId => userIdd)
    if @user_cart.save
      session[:idCart] = @user_cart.id
      @products = Product.all
      render 'products/index'
    else
      @new_user = User.new
      render 'login'
    end
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :email)
  end

end
