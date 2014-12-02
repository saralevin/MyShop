class UserController < ApplicationController

  def start
    @user = User.new
  end

  def start_shopping
    @user=User.new(user_params_start)
    @cart=Cart.new()
    p @user
    if(User.find_by email: @user.email)
      @cart.user_id=(User.find_by email: @user.email).id
      @cart.save
      session[:cart_id]=@cart.id
      redirect_to :controller => 'products', :action => 'index'
    else
      if @user.save 
        @cart.user_id=@user.id
        @cart.save
        session[:cart_id]=@cart.id
        redirect_to :controller => 'products', :action => 'index'
      else
        redirect_to :action => 'start'
      end
    end
  end


  def edit
  	@cart = Cart.find(session[:cart_id])
    @user = User.find(@cart.user_id)
    # @cartsitems = CartItem.where("cart_id = ?", @cart.id)
      @SubTotal = session[:SubTotal] 
      @ShoppingCharge = session[:ShoppingCharge]
      @Total= @ShoppingCharge+@SubTotal
   
  end

  def update
  	@user = User.find(params[:id])
    p @user
  	if @user.update(user_params)
      p @user
      p "===================="
    	redirect_to  :action => "end"
 	  else
  	  render 'edit'
 	  end
  end

  def end
          p "=|=|====|=============="
  end

private
  def user_params
    params.require(:user).permit( :first_name,:last_name ,:address1 ,:address2 ,:city ,:state ,:country ,:zip ,:phone ,:email )
  end

    def user_params_start
    params.require(:user).permit( :first_name,:last_name ,:country ,:email )
  end

end
