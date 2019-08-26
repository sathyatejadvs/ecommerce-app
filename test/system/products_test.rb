require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Products"
  # end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Title", with: "My Title via testing"
    fill_in "Description", with: "My Title via description"
    fill_in "Price", with: "34.33"
    fill_in "Main image", with: "text"
    fill_in "Thumb image", with: "text"
    click_on "Create Product"

    assert_not "Product was successfully created"
    click_on "Back"
  end

   test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product.description
    fill_in "Main image", with: @product.main_image
    fill_in "Price", with: @product.price
    fill_in "Thumb image", with: @product.thumb_image
    fill_in "Title", with: @product.title
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
