class CartItem < ActiveRecord::Base

validates :quantity, presence: true

end
