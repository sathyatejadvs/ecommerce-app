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

end
