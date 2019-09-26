require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get shou" do
    get user_shou_url
    assert_response :success
  end

  test "should get update" do
    get user_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_destroy_url
    assert_response :success
  end

end
