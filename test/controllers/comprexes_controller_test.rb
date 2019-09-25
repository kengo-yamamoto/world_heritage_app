require 'test_helper'

class ComprexesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comprexes_index_url
    assert_response :success
  end

end
