require 'test_helper'

class CaltualsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caltuals_index_url
    assert_response :success
  end

end
