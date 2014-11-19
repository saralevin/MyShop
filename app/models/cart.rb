class Cart < ActiveRecord::Base
  belogns_to :user
  belongs_to :product
end
