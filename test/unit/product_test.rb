require 'test_helper'

class ProductTest < ActiveSupport::TestCase
    test "save" do
   	  p = Product.new
      assert !p.save, "save product without name and price"
    end
end
