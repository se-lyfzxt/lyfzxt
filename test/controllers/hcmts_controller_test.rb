require 'test_helper'

class HcmtsControllerTest < ActionController::TestCase
  setup do
    @hcmt = hcmts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hcmts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hcmt" do
    assert_difference('Hcmt.count') do
      post :create, hcmt: { content: @hcmt.content, hotel_id: @hcmt.hotel_id, user_id: @hcmt.user_id }
    end

    assert_redirected_to hcmt_path(assigns(:hcmt))
  end

  test "should show hcmt" do
    get :show, id: @hcmt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hcmt
    assert_response :success
  end

  test "should update hcmt" do
    patch :update, id: @hcmt, hcmt: { content: @hcmt.content, hotel_id: @hcmt.hotel_id, user_id: @hcmt.user_id }
    assert_redirected_to hcmt_path(assigns(:hcmt))
  end

  test "should destroy hcmt" do
    assert_difference('Hcmt.count', -1) do
      delete :destroy, id: @hcmt
    end

    assert_redirected_to hcmts_path
  end
end
