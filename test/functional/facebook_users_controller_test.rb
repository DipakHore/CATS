require 'test_helper'

class FacebookUsersControllerTest < ActionController::TestCase
  setup do
    @facebook_user = facebook_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facebook_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facebook_user" do
    assert_difference('FacebookUser.count') do
      post :create, facebook_user: { accessLevel: @facebook_user.accessLevel, affiliation: @facebook_user.affiliation, lastAccess: @facebook_user.lastAccess, preferenceCommentNotify: @facebook_user.preferenceCommentNotify, sessionExpires: @facebook_user.sessionExpires, sessionKey: @facebook_user.sessionKey, uid: @facebook_user.uid }
    end

    assert_redirected_to facebook_user_path(assigns(:facebook_user))
  end

  test "should show facebook_user" do
    get :show, id: @facebook_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facebook_user
    assert_response :success
  end

  test "should update facebook_user" do
    put :update, id: @facebook_user, facebook_user: { accessLevel: @facebook_user.accessLevel, affiliation: @facebook_user.affiliation, lastAccess: @facebook_user.lastAccess, preferenceCommentNotify: @facebook_user.preferenceCommentNotify, sessionExpires: @facebook_user.sessionExpires, sessionKey: @facebook_user.sessionKey, uid: @facebook_user.uid }
    assert_redirected_to facebook_user_path(assigns(:facebook_user))
  end

  test "should destroy facebook_user" do
    assert_difference('FacebookUser.count', -1) do
      delete :destroy, id: @facebook_user
    end

    assert_redirected_to facebook_users_path
  end
end
