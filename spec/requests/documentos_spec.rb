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

RSpec.describe "/documentos", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Documento. As you add validations to Documento, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Documento.create! valid_attributes
      get documentos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      documento = Documento.create! valid_attributes
      get documento_url(documento)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_documento_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      documento = Documento.create! valid_attributes
      get edit_documento_url(documento)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Documento" do
        expect {
          post documentos_url, params: { documento: valid_attributes }
        }.to change(Documento, :count).by(1)
      end

      it "redirects to the created documento" do
        post documentos_url, params: { documento: valid_attributes }
        expect(response).to redirect_to(documento_url(Documento.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Documento" do
        expect {
          post documentos_url, params: { documento: invalid_attributes }
        }.to change(Documento, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post documentos_url, params: { documento: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested documento" do
        documento = Documento.create! valid_attributes
        patch documento_url(documento), params: { documento: new_attributes }
        documento.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the documento" do
        documento = Documento.create! valid_attributes
        patch documento_url(documento), params: { documento: new_attributes }
        documento.reload
        expect(response).to redirect_to(documento_url(documento))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        documento = Documento.create! valid_attributes
        patch documento_url(documento), params: { documento: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested documento" do
      documento = Documento.create! valid_attributes
      expect {
        delete documento_url(documento)
      }.to change(Documento, :count).by(-1)
    end

    it "redirects to the documentos list" do
      documento = Documento.create! valid_attributes
      delete documento_url(documento)
      expect(response).to redirect_to(documentos_url)
    end
  end
end