require "test_helper"

class NegociosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negocio = negocios(:one)
  end

  test "should get index" do
    get negocios_url
    assert_response :success
  end

  test "should get new" do
    get new_negocio_url
    assert_response :success
  end

  test "should create negocio" do
    assert_difference("Negocio.count") do
      post negocios_url, params: { negocio: { descripcion: @negocio.descripcion, titulo: @negocio.titulo } }
    end

    assert_redirected_to negocio_url(Negocio.last)
  end

  test "should show negocio" do
    get negocio_url(@negocio)
    assert_response :success
  end

  test "should get edit" do
    get edit_negocio_url(@negocio)
    assert_response :success
  end

  test "should update negocio" do
    patch negocio_url(@negocio), params: { negocio: { descripcion: @negocio.descripcion, titulo: @negocio.titulo } }
    assert_redirected_to negocio_url(@negocio)
  end

  test "should destroy negocio" do
    assert_difference("Negocio.count", -1) do
      delete negocio_url(@negocio)
    end

    assert_redirected_to negocios_url
  end
end
