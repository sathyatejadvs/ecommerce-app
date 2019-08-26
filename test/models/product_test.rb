require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test "product without a title" do 
    assert_not Product.new(title:"").save
   end  

	test "title should be unique" do
		product = Product.new
	    duplicate_item = product.dup.save
	    assert_not duplicate_item.valid?
	end

   test "product without description" do 
    product = Product.new
    assert_not product.save, "Product saved without title"
   end 

end
