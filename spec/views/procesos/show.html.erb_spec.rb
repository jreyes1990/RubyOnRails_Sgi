require 'rails_helper'

RSpec.describe "procesos/show", type: :view do
  before(:each) do
    @proceso = assign(:proceso, Proceso.create!(
      nombre: "Nombre",
      descripcion: "Descripcion",
      abreviatura: "Abreviatura",
      empresa_id: 2,
      user_created_id: 3,
      user_updated_id: 4,
      estado: "Estado",
      macro_proceso: nil,
      tipo_proceso: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/Abreviatura/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end