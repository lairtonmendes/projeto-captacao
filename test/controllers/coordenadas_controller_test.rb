require 'test_helper'

class CoordenadasControllerTest < ActionController::TestCase
  setup do
    @coordenada = coordenadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordenadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordenada" do
    assert_difference('Coordenada.count') do
      post :create, coordenada: { lat: @coordenada.lat, lon: @coordenada.lon, ot: @coordenada.ot }
    end

    assert_redirected_to coordenada_path(assigns(:coordenada))
  end

  test "should show coordenada" do
    get :show, id: @coordenada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coordenada
    assert_response :success
  end

  test "should update coordenada" do
    patch :update, id: @coordenada, coordenada: { lat: @coordenada.lat, lon: @coordenada.lon, ot: @coordenada.ot }
    assert_redirected_to coordenada_path(assigns(:coordenada))
  end

  test "should destroy coordenada" do
    assert_difference('Coordenada.count', -1) do
      delete :destroy, id: @coordenada
    end

    assert_redirected_to coordenadas_path
  end
end
