require 'test_helper'

class EnteradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enterado = enterados(:one)
  end

  test "should get index" do
    get enterados_url
    assert_response :success
  end

  test "should get new" do
    get new_enterado_url
    assert_response :success
  end

  test "should create enterado" do
    assert_difference('Enterado.count') do
      post enterados_url, params: { enterado: { enterado: @enterado.enterado, post_id: @enterado.post_id, user_id: @enterado.user_id } }
    end

    assert_redirected_to enterado_url(Enterado.last)
  end

  test "should show enterado" do
    get enterado_url(@enterado)
    assert_response :success
  end

  test "should get edit" do
    get edit_enterado_url(@enterado)
    assert_response :success
  end

  test "should update enterado" do
    patch enterado_url(@enterado), params: { enterado: { enterado: @enterado.enterado, post_id: @enterado.post_id, user_id: @enterado.user_id } }
    assert_redirected_to enterado_url(@enterado)
  end

  test "should destroy enterado" do
    assert_difference('Enterado.count', -1) do
      delete enterado_url(@enterado)
    end

    assert_redirected_to enterados_url
  end
end
