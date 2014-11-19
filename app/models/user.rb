class User < ActiveRecord::Base
	has_many :cart , dependent: :destroy
end
