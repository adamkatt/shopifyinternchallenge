require "test_helper"

class ShopifydbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopifydb = shopifydbs(:one)
  end

  test "should get index" do
    get shopifydbs_url
    assert_response :success
  end

  test "should get new" do
    get new_shopifydb_url
    assert_response :success
  end

  test "should create shopifydb" do
    assert_difference('Shopifydb.count') do
      post shopifydbs_url, params: { shopifydb: { inventory: @shopifydb.inventory, location: @shopifydb.location, price: @shopifydb.price, treetype: @shopifydb.treetype } }
    end

    assert_redirected_to shopifydb_url(Shopifydb.last)
  end

  test "should show shopifydb" do
    get shopifydb_url(@shopifydb)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopifydb_url(@shopifydb)
    assert_response :success
  end

  test "should update shopifydb" do
    patch shopifydb_url(@shopifydb), params: { shopifydb: { inventory: @shopifydb.inventory, location: @shopifydb.location, price: @shopifydb.price, treetype: @shopifydb.treetype } }
    assert_redirected_to shopifydb_url(@shopifydb)
  end

  test "should destroy shopifydb" do
    assert_difference('Shopifydb.count', -1) do
      delete shopifydb_url(@shopifydb)
    end

    assert_redirected_to shopifydbs_url
  end
end
