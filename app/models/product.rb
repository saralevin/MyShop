class Product < ActiveRecord::Base
	has_many :cart , dependent: :destroy
end
