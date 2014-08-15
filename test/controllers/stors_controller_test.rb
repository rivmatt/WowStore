require 'test_helper'

class StorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

  test "should get sales" do
    get :sales
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

end
