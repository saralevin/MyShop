class Cart < ActiveRecord::Base
	belong_to :user
	belong_to :product
end
