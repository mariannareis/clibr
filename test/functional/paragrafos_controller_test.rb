require 'test_helper'

class ParagrafosControllerTest < ActionController::TestCase
  setup do
    @paragrafo = paragrafos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paragrafos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paragrafo" do
    assert_difference('Paragrafo.count') do
      post :create, :paragrafo => @paragrafo.attributes
    end

    assert_redirected_to paragrafo_path(assigns(:paragrafo))
  end

  test "should show paragrafo" do
    get :show, :id => @paragrafo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paragrafo.to_param
    assert_response :success
  end

  test "should update paragrafo" do
    put :update, :id => @paragrafo.to_param, :paragrafo => @paragrafo.attributes
    assert_redirected_to paragrafo_path(assigns(:paragrafo))
  end

  test "should destroy paragrafo" do
    assert_difference('Paragrafo.count', -1) do
      delete :destroy, :id => @paragrafo.to_param
    end

    assert_redirected_to paragrafos_path
  end
end
