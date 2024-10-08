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

RSpec.describe "/proveedores", type: :request do
  
  # Proveedor. As you add validations to Proveedor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Proveedor.create! valid_attributes
      get proveedores_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      proveedor = Proveedor.create! valid_attributes
      get proveedor_url(proveedor)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_proveedor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      proveedor = Proveedor.create! valid_attributes
      get edit_proveedor_url(proveedor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Proveedor" do
        expect {
          post proveedores_url, params: { proveedor: valid_attributes }
        }.to change(Proveedor, :count).by(1)
      end

      it "redirects to the created proveedor" do
        post proveedores_url, params: { proveedor: valid_attributes }
        expect(response).to redirect_to(proveedor_url(Proveedor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Proveedor" do
        expect {
          post proveedores_url, params: { proveedor: invalid_attributes }
        }.to change(Proveedor, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post proveedores_url, params: { proveedor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested proveedor" do
        proveedor = Proveedor.create! valid_attributes
        patch proveedor_url(proveedor), params: { proveedor: new_attributes }
        proveedor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the proveedor" do
        proveedor = Proveedor.create! valid_attributes
        patch proveedor_url(proveedor), params: { proveedor: new_attributes }
        proveedor.reload
        expect(response).to redirect_to(proveedor_url(proveedor))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        proveedor = Proveedor.create! valid_attributes
        patch proveedor_url(proveedor), params: { proveedor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested proveedor" do
      proveedor = Proveedor.create! valid_attributes
      expect {
        delete proveedor_url(proveedor)
      }.to change(Proveedor, :count).by(-1)
    end

    it "redirects to the proveedores list" do
      proveedor = Proveedor.create! valid_attributes
      delete proveedor_url(proveedor)
      expect(response).to redirect_to(proveedores_url)
    end
  end
end
