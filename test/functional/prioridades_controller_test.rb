require 'test_helper'

class PrioridadesControllerTest < ActionController::TestCase
  setup do
    @prioridade = prioridades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prioridades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prioridade" do
    assert_difference('Prioridade.count') do
      post :create, prioridade: { nome: @prioridade.nome }
    end

    assert_redirected_to prioridade_path(assigns(:prioridade))
  end

  test "should show prioridade" do
    get :show, id: @prioridade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prioridade
    assert_response :success
  end

  test "should update prioridade" do
    put :update, id: @prioridade, prioridade: { nome: @prioridade.nome }
    assert_redirected_to prioridade_path(assigns(:prioridade))
  end

  test "should destroy prioridade" do
    assert_difference('Prioridade.count', -1) do
      delete :destroy, id: @prioridade
    end

    assert_redirected_to prioridades_path
  end
end
