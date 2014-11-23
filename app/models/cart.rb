class Cart < ActiveRecord::Base

	has_many :cart_items, dependent: :destroy
	belongs_to :user
	# belong_to :product
end
