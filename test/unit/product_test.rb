require 'test_helper'

class ProductTest < ActiveSupport::TestCase
    test "save" do
   	  p = Product.new({description: "no name",
   	  					name: nil, price: nil})
      assert !p.save, "save product without name and price"
    end
end
