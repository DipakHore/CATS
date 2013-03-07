require 'test_helper'

class DownloadItemsControllerTest < ActionController::TestCase
  setup do
    @download_item = download_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:download_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create download_item" do
    assert_difference('DownloadItem.count') do
      post :create, download_item: { assignment_id: @download_item.assignment_id, key: @download_item.key, path: @download_item.path }
    end

    assert_redirected_to download_item_path(assigns(:download_item))
  end

  test "should show download_item" do
    get :show, id: @download_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @download_item
    assert_response :success
  end

  test "should update download_item" do
    put :update, id: @download_item, download_item: { assignment_id: @download_item.assignment_id, key: @download_item.key, path: @download_item.path }
    assert_redirected_to download_item_path(assigns(:download_item))
  end

  test "should destroy download_item" do
    assert_difference('DownloadItem.count', -1) do
      delete :destroy, id: @download_item
    end

    assert_redirected_to download_items_path
  end
end
