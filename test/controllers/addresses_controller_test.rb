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

  test "should get new" do
    get new_address_url
    assert_response :success
  end

  test "should get edit" do
    get edit_address_url(Address.first)
    assert_response :success
  end

  test "should get show" do 
    get address_url(Address.first)
    assert_response :success
  end

  test "should update address" do
    put address_url(Address.first), params: {address: {address_line1: "AECS Layout", name: "Satyateja Daggubati"}}
    assert_redirected_to address_url(Address.first)
  end

  test "should delete address" do
    assert_difference('Address.count', -1) do
      delete address_url(Address.last)
    end
    assert_redirected_to addresses_url
  end

end
