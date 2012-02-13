class Cart < ActiveRecord::Base
	has_many :users
	has_many :items
end
