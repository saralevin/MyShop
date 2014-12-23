class User < ActiveRecord::Base

validates :firstName, presence: true
validates :lastName, presence: true
validates :email, presence: true


end
