require 'test_helper'

class TipoEquiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_equipo = tipo_equipos(:one)
  end

  test "should get index" do
    get tipo_equipos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_equipo_url
    assert_response :success
  end

  test "should create tipo_equipo" do
    assert_difference('TipoEquipo.count') do
      post tipo_equipos_url, params: { tipo_equipo: { descripcion: @tipo_equipo.descripcion, estado: @tipo_equipo.estado, nombre: @tipo_equipo.nombre, user_created_id: @tipo_equipo.user_created_id, user_updated_id: @tipo_equipo.user_updated_id } }
    end

    assert_redirected_to tipo_equipo_url(TipoEquipo.last)
  end

  test "should show tipo_equipo" do
    get tipo_equipo_url(@tipo_equipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_equipo_url(@tipo_equipo)
    assert_response :success
  end

  test "should update tipo_equipo" do
    patch tipo_equipo_url(@tipo_equipo), params: { tipo_equipo: { descripcion: @tipo_equipo.descripcion, estado: @tipo_equipo.estado, nombre: @tipo_equipo.nombre, user_created_id: @tipo_equipo.user_created_id, user_updated_id: @tipo_equipo.user_updated_id } }
    assert_redirected_to tipo_equipo_url(@tipo_equipo)
  end

  test "should destroy tipo_equipo" do
    assert_difference('TipoEquipo.count', -1) do
      delete tipo_equipo_url(@tipo_equipo)
    end

    assert_redirected_to tipo_equipos_url
  end
end
