require 'test_helper'

class Admin::FloweringSeasonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_flowering_seasons_index_url
    assert_response :success
  end

  test "should get create" do
    get admin_flowering_seasons_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_flowering_seasons_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_flowering_seasons_update_url
    assert_response :success
  end

end
