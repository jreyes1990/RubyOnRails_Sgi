require 'rails_helper'

RSpec.describe "seguimiento_solicitudes/new", type: :view do
  before(:each) do
    assign(:seguimiento_solicitud, SeguimientoSolicitud.new(
      version: 1,
      descripcion: "MyString",
      estado_documento_id: 1,
      etapa_seguimiento_id: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado: "MyString",
      solicitud_cambio: nil
    ))
  end

  it "renders new seguimiento_solicitud form" do
    render

    assert_select "form[action=?][method=?]", seguimiento_solicitudes_path, "post" do

      assert_select "input[name=?]", "seguimiento_solicitud[version]"

      assert_select "input[name=?]", "seguimiento_solicitud[descripcion]"

      assert_select "input[name=?]", "seguimiento_solicitud[estado_documento_id]"

      assert_select "input[name=?]", "seguimiento_solicitud[etapa_seguimiento_id]"

      assert_select "input[name=?]", "seguimiento_solicitud[user_created_id]"

      assert_select "input[name=?]", "seguimiento_solicitud[user_updated_id]"

      assert_select "input[name=?]", "seguimiento_solicitud[estado]"

      assert_select "input[name=?]", "seguimiento_solicitud[solicitud_cambio_id]"
    end
  end
end