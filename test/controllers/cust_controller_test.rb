require "test_helper"

class CustControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cust_new_url
    assert_response :success
  end

  test "should get create" do
    get cust_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cust_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get cust_edit_url
    assert_response :success
  end
end
