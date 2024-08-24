require 'rails_helper'

RSpec.describe "estado_documentos/show", type: :view do
  before(:each) do
    @estado_documento = assign(:estado_documento, EstadoDocumento.create!(
      nombre: "Nombre",
      descripcion: "Descripcion",
      empresa_id: 2,
      user_created_id: 3,
      user_updated_id: 4,
      estado: "Estado",
      etapa_documento: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Descripcion/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(//)
  end
end