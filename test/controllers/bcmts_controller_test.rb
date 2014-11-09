require 'test_helper'

class BcmtsControllerTest < ActionController::TestCase
  setup do
    @bcmt = bcmts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcmts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcmt" do
    assert_difference('Bcmt.count') do
      post :create, bcmt: { blog_id: @bcmt.blog_id, content: @bcmt.content, user_id: @bcmt.user_id }
    end

    assert_redirected_to bcmt_path(assigns(:bcmt))
  end

  test "should show bcmt" do
    get :show, id: @bcmt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bcmt
    assert_response :success
  end

  test "should update bcmt" do
    patch :update, id: @bcmt, bcmt: { blog_id: @bcmt.blog_id, content: @bcmt.content, user_id: @bcmt.user_id }
    assert_redirected_to bcmt_path(assigns(:bcmt))
  end

  test "should destroy bcmt" do
    assert_difference('Bcmt.count', -1) do
      delete :destroy, id: @bcmt
    end

    assert_redirected_to bcmts_path
  end
end
