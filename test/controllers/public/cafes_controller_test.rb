require "test_helper"

class Public::CafesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cafes_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cafes_show_url
    assert_response :success
  end
end
