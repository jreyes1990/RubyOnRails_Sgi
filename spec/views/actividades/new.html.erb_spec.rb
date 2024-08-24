require 'rails_helper'

RSpec.describe "actividades/new", type: :view do
  before(:each) do
    assign(:actividad, Actividad.new(
      nombre: "MyString",
      descripcion: "MyString",
      empresa_id: 1,
      user_created_id: 1,
      user_updated_id: 1,
      estado: "MyString",
      proceso: nil
    ))
  end

  it "renders new actividad form" do
    render

    assert_select "form[action=?][method=?]", actividades_path, "post" do

      assert_select "input[name=?]", "actividad[nombre]"

      assert_select "input[name=?]", "actividad[descripcion]"

      assert_select "input[name=?]", "actividad[empresa_id]"

      assert_select "input[name=?]", "actividad[user_created_id]"

      assert_select "input[name=?]", "actividad[user_updated_id]"

      assert_select "input[name=?]", "actividad[estado]"

      assert_select "input[name=?]", "actividad[proceso_id]"
    end
  end
end