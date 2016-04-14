require 'test_helper'

class SpektaklsControllerTest < ActionController::TestCase
  setup do
    @spektakl = spektakls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spektakls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spektakl" do
    assert_difference('Spektakl.count') do
      post :create, spektakl: { premiera: @spektakl.premiera, rezyser: @spektakl.rezyser, tytul: @spektakl.tytul }
    end

    assert_redirected_to spektakl_path(assigns(:spektakl))
  end

  test "should show spektakl" do
    get :show, id: @spektakl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spektakl
    assert_response :success
  end

  test "should update spektakl" do
    patch :update, id: @spektakl, spektakl: { premiera: @spektakl.premiera, rezyser: @spektakl.rezyser, tytul: @spektakl.tytul }
    assert_redirected_to spektakl_path(assigns(:spektakl))
  end

  test "should destroy spektakl" do
    assert_difference('Spektakl.count', -1) do
      delete :destroy, id: @spektakl
    end

    assert_redirected_to spektakls_path
  end
end
