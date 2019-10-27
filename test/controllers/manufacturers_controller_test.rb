require 'test_helper'

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manufacturers_index_url
    assert_response :success
  end

  test "should get show" do
    get manufacturers_show_url
    assert_response :success
  end

  test "should get edit" do
    get manufacturers_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get manufacturers_destroy_url
    assert_response :success
  end

end
