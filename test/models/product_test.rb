require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test "product without a title" do 
    assert_not Product.new(title:"").save
   end  

   test "product without description" do 
    product = Product.new
    assert_not product.save, "Product saved without title"
   end
    
   test "should have numeric price" do
    product = Product.new(price: 'test')
    assert_not product.valid?
    assert_equal ["is not a number"], product.errors.messages[:price]
  end
end
