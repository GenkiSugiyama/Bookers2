require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get tops_view_url
    assert_response :success
  end

end
