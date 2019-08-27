require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    get addresses_url
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post addresses_url, params: { address: { address_line1: "address1", address_line2: "address2", email: "address@gmail.com", name: "satya", phone: "9393838482" } }
    end

    assert_redirected_to address_url(Address.last)
  end

  test "should get show" do 
    get addresses_url(@address)
    assert_response :success
  end
end
