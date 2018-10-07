require 'test_helper'

class VicinoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vicino_index_url
    assert_response :success
  end

end
