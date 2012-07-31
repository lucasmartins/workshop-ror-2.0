require 'test_helper'

class EntregasControllerTest < ActionController::TestCase
  setup do
    @entrega = entregas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entregas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrega" do
    assert_difference('Entrega.count') do
      post :create, entrega: { conteudo: @entrega.conteudo, destinatario: @entrega.destinatario, entrege: @entrega.entrege, remetente: @entrega.remetente }
    end

    assert_redirected_to entrega_path(assigns(:entrega))
  end

  test "should show entrega" do
    get :show, id: @entrega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrega
    assert_response :success
  end

  test "should update entrega" do
    put :update, id: @entrega, entrega: { conteudo: @entrega.conteudo, destinatario: @entrega.destinatario, entrege: @entrega.entrege, remetente: @entrega.remetente }
    assert_redirected_to entrega_path(assigns(:entrega))
  end

  test "should destroy entrega" do
    assert_difference('Entrega.count', -1) do
      delete :destroy, id: @entrega
    end

    assert_redirected_to entregas_path
  end
end
