require "application_system_test_case"

class ShopifydbsTest < ApplicationSystemTestCase
  setup do
    @shopifydb = shopifydbs(:one)
  end

  test "visiting the index" do
    visit shopifydbs_url
    assert_selector "h1", text: "Shopifydbs"
  end

  test "creating a Shopifydb" do
    visit shopifydbs_url
    click_on "New Shopifydb"

    fill_in "Inventory", with: @shopifydb.inventory
    fill_in "Location", with: @shopifydb.location
    fill_in "Price", with: @shopifydb.price
    fill_in "Treetype", with: @shopifydb.treetype
    click_on "Create Shopifydb"

    assert_text "Shopifydb was successfully created"
    click_on "Back"
  end

  test "updating a Shopifydb" do
    visit shopifydbs_url
    click_on "Edit", match: :first

    fill_in "Inventory", with: @shopifydb.inventory
    fill_in "Location", with: @shopifydb.location
    fill_in "Price", with: @shopifydb.price
    fill_in "Treetype", with: @shopifydb.treetype
    click_on "Update Shopifydb"

    assert_text "Shopifydb was successfully updated"
    click_on "Back"
  end

  test "destroying a Shopifydb" do
    visit shopifydbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shopifydb was successfully destroyed"
  end
end
