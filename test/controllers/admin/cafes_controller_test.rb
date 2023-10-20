require "test_helper"

class Admin::CafesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_cafes_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_cafes_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_cafes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_cafes_edit_url
    assert_response :success
  end
end
