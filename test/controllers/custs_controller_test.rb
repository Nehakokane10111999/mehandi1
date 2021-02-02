require "test_helper"

class CustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cust = custs(:one)
  end

  test "should get index" do
    get custs_url
    assert_response :success
  end

  test "should get new" do
    get new_cust_url
    assert_response :success
  end

  test "should create cust" do
    assert_difference('Cust.count') do
      post custs_url, params: { cust: { address: @cust.address, dob: @cust.dob, email: @cust.email, mobile: @cust.mobile, name: @cust.name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to cust_url(Cust.last)
  end

  test "should show cust" do
    get cust_url(@cust)
    assert_response :success
  end

  test "should get edit" do
    get edit_cust_url(@cust)
    assert_response :success
  end

  test "should update cust" do
    patch cust_url(@cust), params: { cust: { address: @cust.address, dob: @cust.dob, email: @cust.email, mobile: @cust.mobile, name: @cust.name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to cust_url(@cust)
  end

  test "should destroy cust" do
    assert_difference('Cust.count', -1) do
      delete cust_url(@cust)
    end

    assert_redirected_to custs_url
  end
end
