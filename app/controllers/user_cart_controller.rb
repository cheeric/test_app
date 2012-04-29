class UserCartController < ApplicationController
	
	def new
		@cart = Cart.new;
	end

	def create
		@cart = Cart.new(params[:cart])
		if @cart.save
			current_user.cart = @cart
			current_user.save
			redirect_to root_path
		else
			render action: 'new'
		end
	end
end
