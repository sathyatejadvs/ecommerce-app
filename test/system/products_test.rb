require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "open a product" do
    visit products_url
    assert_selector "img"
  end

  test "visiting the Contact" do
    visit products_url
    click_on 'Contact'
    click_on "Home"
  end
end
