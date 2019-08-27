require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    get addresses_url
    assert_response :success
  end

  test "should get show" do 
    get addresses_url(@address)
    assert_response :success
  end
  
end
