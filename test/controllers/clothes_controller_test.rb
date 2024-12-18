require "test_helper"

class ClothesControllerTest < ActionDispatch::IntegrationTest
  test "should get catalog" do
    get clothes_catalog_url
    assert_response :success
  end
end
