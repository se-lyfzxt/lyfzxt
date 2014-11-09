require 'test_helper'

class AcmtsControllerTest < ActionController::TestCase
  setup do
    @acmt = acmts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acmts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acmt" do
    assert_difference('Acmt.count') do
      post :create, acmt: { attraction_id: @acmt.attraction_id, content: @acmt.content, user_id: @acmt.user_id }
    end

    assert_redirected_to acmt_path(assigns(:acmt))
  end

  test "should show acmt" do
    get :show, id: @acmt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acmt
    assert_response :success
  end

  test "should update acmt" do
    patch :update, id: @acmt, acmt: { attraction_id: @acmt.attraction_id, content: @acmt.content, user_id: @acmt.user_id }
    assert_redirected_to acmt_path(assigns(:acmt))
  end

  test "should destroy acmt" do
    assert_difference('Acmt.count', -1) do
      delete :destroy, id: @acmt
    end

    assert_redirected_to acmts_path
  end
end
