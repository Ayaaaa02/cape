require "test_helper"

class Admin::ResevationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_resevations_index_url
    assert_response :success
  end
end
