require 'test_helper'

class KeepersControllerTest < ActionController::TestCase
  setup do
    @keeper = keepers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keepers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keeper" do
    assert_difference('Keeper.count') do
      post :create, keeper: { first: @keeper.first, keeper_year: @keeper.keeper_year, last: @keeper.last, team: @keeper.team, year: @keeper.year }
    end

    assert_redirected_to keeper_path(assigns(:keeper))
  end

  test "should show keeper" do
    get :show, id: @keeper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keeper
    assert_response :success
  end

  test "should update keeper" do
    patch :update, id: @keeper, keeper: { first: @keeper.first, keeper_year: @keeper.keeper_year, last: @keeper.last, team: @keeper.team, year: @keeper.year }
    assert_redirected_to keeper_path(assigns(:keeper))
  end

  test "should destroy keeper" do
    assert_difference('Keeper.count', -1) do
      delete :destroy, id: @keeper
    end

    assert_redirected_to keepers_path
  end
end
