require "test_helper"

class Public::ResevationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_resevations_new_url
    assert_response :success
  end

  test "should get confirm" do
    get public_resevations_confirm_url
    assert_response :success
  end

  test "should get thanks" do
    get public_resevations_thanks_url
    assert_response :success
  end
end
