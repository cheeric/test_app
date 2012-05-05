require 'test_helper'

class ProductFlowsTest < ActionDispatch::IntegrationTest

	setup do
		User.create(email: 'admin@admin.com',
					password: 'password')
		visit new_user_session_path
		fill_in 'Email', with: 'admin@admin.com'
		fill_in 'Password', with: 'password'
		click_button 'Sign in'
	end

    test "add to cart" do
    	visit product_path
    	click_link "Add to Cart"
    	assert page.has_content?("add_to_cart not working")
    end
end
