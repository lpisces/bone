require 'test_helper'

class CategoryControllerTest < ActionController::TestCase
  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
