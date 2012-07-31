require 'test_helper'

class CentralCorreiosControllerTest < ActionController::TestCase
  setup do
    @central_correio = central_correios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:central_correios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create central_correio" do
    assert_difference('CentralCorreio.count') do
      post :create, central_correio: { capacidade: @central_correio.capacidade, nome: @central_correio.nome }
    end

    assert_redirected_to central_correio_path(assigns(:central_correio))
  end

  test "should show central_correio" do
    get :show, id: @central_correio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @central_correio
    assert_response :success
  end

  test "should update central_correio" do
    put :update, id: @central_correio, central_correio: { capacidade: @central_correio.capacidade, nome: @central_correio.nome }
    assert_redirected_to central_correio_path(assigns(:central_correio))
  end

  test "should destroy central_correio" do
    assert_difference('CentralCorreio.count', -1) do
      delete :destroy, id: @central_correio
    end

    assert_redirected_to central_correios_path
  end
end
