require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_out" do
    get users_sign_out_url
    assert_response :success
  end
end
