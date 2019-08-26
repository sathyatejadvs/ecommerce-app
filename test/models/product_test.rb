require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   test "product without a title" do 
    assert_not Product.new(title:"").save
   end  


end
