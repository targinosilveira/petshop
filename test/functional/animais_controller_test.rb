require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_animal
    assert_difference('Animal.count') do
      post :create, :animal => { }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  def test_should_show_animal
    get :show, :id => animais(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => animais(:one).id
    assert_response :success
  end

  def test_should_update_animal
    put :update, :id => animais(:one).id, :animal => { }
    assert_redirected_to animal_path(assigns(:animal))
  end

  def test_should_destroy_animal
    assert_difference('Animal.count', -1) do
      delete :destroy, :id => animais(:one).id
    end

    assert_redirected_to animais_path
  end
end
