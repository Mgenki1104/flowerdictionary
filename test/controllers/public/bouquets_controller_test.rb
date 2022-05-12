require 'test_helper'

class Public::BouquetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_bouquets_index_url
    assert_response :success
  end

  test "should get show" do
    get public_bouquets_show_url
    assert_response :success
  end

end
