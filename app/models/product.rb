class Product < ActiveRecord::Base
	has_many :orders
	validates :name, :presence => true
	validates :price, :presence => true
	validates :price, :numericality => true
end
