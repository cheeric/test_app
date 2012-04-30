module ApplicationHelper
  def cart_products
    current_user.
      recent_household_purchases if
        current_user
  end

  def is_admin?
  	current_user.admin
  end
  
end
