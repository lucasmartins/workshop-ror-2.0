require 'test_helper'

class SelosControllerTest < ActionController::TestCase
  setup do
    @selo = selos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selo" do
    assert_difference('Selo.count') do
      post :create, selo: { nome: @selo.nome }
    end

    assert_redirected_to selo_path(assigns(:selo))
  end

  test "should show selo" do
    get :show, id: @selo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selo
    assert_response :success
  end

  test "should update selo" do
    put :update, id: @selo, selo: { nome: @selo.nome }
    assert_redirected_to selo_path(assigns(:selo))
  end

  test "should destroy selo" do
    assert_difference('Selo.count', -1) do
      delete :destroy, id: @selo
    end

    assert_redirected_to selos_path
  end
end
