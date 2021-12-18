require "application_system_test_case"

class FiguresTest < ApplicationSystemTestCase
  setup do
    @figure = figures(:one)
  end

  test "visiting the index" do
    visit figures_url
    assert_selector "h1", text: "Figures"
  end

  test "creating a Figure" do
    visit figures_url
    click_on "New Figure"

    fill_in "Attributes", with: @figure.attributes
    check "Bestseller" if @figure.bestseller
    fill_in "Category", with: @figure.category
    fill_in "Company", with: @figure.company
    fill_in "Delivery", with: @figure.delivery
    fill_in "Delivery time", with: @figure.delivery_time
    fill_in "Description", with: @figure.description
    fill_in "Name", with: @figure.name
    fill_in "Oldprice", with: @figure.oldPrice
    fill_in "Picture", with: @figure.picture
    fill_in "Price", with: @figure.price
    fill_in "Quality", with: @figure.quality
    fill_in "Stock", with: @figure.stock
    fill_in "Subcategory", with: @figure.subcategory
    click_on "Create Figure"

    assert_text "Figure was successfully created"
    click_on "Back"
  end

  test "updating a Figure" do
    visit figures_url
    click_on "Edit", match: :first

    fill_in "Attributes", with: @figure.attributes
    check "Bestseller" if @figure.bestseller
    fill_in "Category", with: @figure.category
    fill_in "Company", with: @figure.company
    fill_in "Delivery", with: @figure.delivery
    fill_in "Delivery time", with: @figure.delivery_time
    fill_in "Description", with: @figure.description
    fill_in "Name", with: @figure.name
    fill_in "Oldprice", with: @figure.oldPrice
    fill_in "Picture", with: @figure.picture
    fill_in "Price", with: @figure.price
    fill_in "Quality", with: @figure.quality
    fill_in "Stock", with: @figure.stock
    fill_in "Subcategory", with: @figure.subcategory
    click_on "Update Figure"

    assert_text "Figure was successfully updated"
    click_on "Back"
  end

  test "destroying a Figure" do
    visit figures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Figure was successfully destroyed"
  end
end
