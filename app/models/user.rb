class User < ActiveRecord::Base
	has_many :carts, :dependent => :destroy
	validates :name, :presence => true
end
