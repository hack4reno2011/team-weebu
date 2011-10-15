require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get locations" do
    get :locations
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
