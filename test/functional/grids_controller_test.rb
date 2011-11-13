require 'test_helper'

class GridsControllerTest < ActionController::TestCase
  setup do
    @grid = grids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grid" do
    assert_difference('Grid.count') do
      post :create, grid: @grid.attributes
    end

    assert_redirected_to grid_path(assigns(:grid))
  end

  test "should show grid" do
    get :show, id: @grid.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grid.to_param
    assert_response :success
  end

  test "should update grid" do
    put :update, id: @grid.to_param, grid: @grid.attributes
    assert_redirected_to grid_path(assigns(:grid))
  end

  test "should destroy grid" do
    assert_difference('Grid.count', -1) do
      delete :destroy, id: @grid.to_param
    end

    assert_redirected_to grids_path
  end
end
