require 'test_helper'

class Admin::RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_restaurant_index_url
    assert_response :success
  end

end
