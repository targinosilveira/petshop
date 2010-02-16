require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, :animal => { }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, :id => animais(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => animais(:one).to_param
    assert_response :success
  end

  test "should update animal" do
    put :update, :id => animais(:one).to_param, :animal => { }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, :id => animais(:one).to_param
    end

    assert_redirected_to animais_path
  end
end
