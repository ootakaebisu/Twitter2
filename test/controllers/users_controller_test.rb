require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get editshow" do
    get users_editshow_url
    assert_response :success
  end

end
