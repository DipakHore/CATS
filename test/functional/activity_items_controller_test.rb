require 'test_helper'

class ActivityItemsControllerTest < ActionController::TestCase
  setup do
    @activity_item = activity_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_item" do
    assert_difference('ActivityItem.count') do
      post :create, activity_item: { assignment_id: @activity_item.assignment_id, sentence: @activity_item.sentence }
    end

    assert_redirected_to activity_item_path(assigns(:activity_item))
  end

  test "should show activity_item" do
    get :show, id: @activity_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_item
    assert_response :success
  end

  test "should update activity_item" do
    put :update, id: @activity_item, activity_item: { assignment_id: @activity_item.assignment_id, sentence: @activity_item.sentence }
    assert_redirected_to activity_item_path(assigns(:activity_item))
  end

  test "should destroy activity_item" do
    assert_difference('ActivityItem.count', -1) do
      delete :destroy, id: @activity_item
    end

    assert_redirected_to activity_items_path
  end
end
