require 'test_helper'

class ProductFlowsTest < ActionDispatch::IntegrationTest
    test "the truth" do
      p = Product.new
      assert !p.save, "save product without name and price"
    end
end
