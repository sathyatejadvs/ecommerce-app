require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  
 

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end
  test "creating a Address" do
    visit addresses_url
    click_on "New Address"

    fill_in "Address line1", with: @address.address_line1
    fill_in "Address line2", with: @address.address_line2
    fill_in "Email", with: @address.email
    fill_in "Name", with: @address.name
    fill_in "Phone", with: @address.phone
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_on "Edit", match: :first

    fill_in "Address line1", with: @address.address_line1
    fill_in "Address line2", with: @address.address_line2
    fill_in "Email", with: @address.email
    fill_in "Name", with: @address.name
    fill_in "Phone", with: @address.phone
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
  
end
