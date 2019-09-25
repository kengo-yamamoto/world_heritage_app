require 'test_helper'

class NaturalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get naturals_index_url
    assert_response :success
  end

end
