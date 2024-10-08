require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/permiso_documento_usuarios", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PermisoDocumentoUsuario. As you add validations to PermisoDocumentoUsuario, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PermisoDocumentoUsuario.create! valid_attributes
      get permiso_documento_usuarios_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
      get permiso_documento_usuario_url(permiso_documento_usuario)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_permiso_documento_usuario_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
      get edit_permiso_documento_usuario_url(permiso_documento_usuario)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PermisoDocumentoUsuario" do
        expect {
          post permiso_documento_usuarios_url, params: { permiso_documento_usuario: valid_attributes }
        }.to change(PermisoDocumentoUsuario, :count).by(1)
      end

      it "redirects to the created permiso_documento_usuario" do
        post permiso_documento_usuarios_url, params: { permiso_documento_usuario: valid_attributes }
        expect(response).to redirect_to(permiso_documento_usuario_url(PermisoDocumentoUsuario.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PermisoDocumentoUsuario" do
        expect {
          post permiso_documento_usuarios_url, params: { permiso_documento_usuario: invalid_attributes }
        }.to change(PermisoDocumentoUsuario, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post permiso_documento_usuarios_url, params: { permiso_documento_usuario: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested permiso_documento_usuario" do
        permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
        patch permiso_documento_usuario_url(permiso_documento_usuario), params: { permiso_documento_usuario: new_attributes }
        permiso_documento_usuario.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the permiso_documento_usuario" do
        permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
        patch permiso_documento_usuario_url(permiso_documento_usuario), params: { permiso_documento_usuario: new_attributes }
        permiso_documento_usuario.reload
        expect(response).to redirect_to(permiso_documento_usuario_url(permiso_documento_usuario))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
        patch permiso_documento_usuario_url(permiso_documento_usuario), params: { permiso_documento_usuario: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested permiso_documento_usuario" do
      permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
      expect {
        delete permiso_documento_usuario_url(permiso_documento_usuario)
      }.to change(PermisoDocumentoUsuario, :count).by(-1)
    end

    it "redirects to the permiso_documento_usuarios list" do
      permiso_documento_usuario = PermisoDocumentoUsuario.create! valid_attributes
      delete permiso_documento_usuario_url(permiso_documento_usuario)
      expect(response).to redirect_to(permiso_documento_usuarios_url)
    end
  end
end
