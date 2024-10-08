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

RSpec.describe "/actividades", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Actividad. As you add validations to Actividad, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Actividad.create! valid_attributes
      get actividades_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      actividad = Actividad.create! valid_attributes
      get actividad_url(actividad)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_actividad_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      actividad = Actividad.create! valid_attributes
      get edit_actividad_url(actividad)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Actividad" do
        expect {
          post actividades_url, params: { actividad: valid_attributes }
        }.to change(Actividad, :count).by(1)
      end

      it "redirects to the created actividad" do
        post actividades_url, params: { actividad: valid_attributes }
        expect(response).to redirect_to(actividad_url(Actividad.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Actividad" do
        expect {
          post actividades_url, params: { actividad: invalid_attributes }
        }.to change(Actividad, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post actividades_url, params: { actividad: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested actividad" do
        actividad = Actividad.create! valid_attributes
        patch actividad_url(actividad), params: { actividad: new_attributes }
        actividad.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the actividad" do
        actividad = Actividad.create! valid_attributes
        patch actividad_url(actividad), params: { actividad: new_attributes }
        actividad.reload
        expect(response).to redirect_to(actividad_url(actividad))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        actividad = Actividad.create! valid_attributes
        patch actividad_url(actividad), params: { actividad: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested actividad" do
      actividad = Actividad.create! valid_attributes
      expect {
        delete actividad_url(actividad)
      }.to change(Actividad, :count).by(-1)
    end

    it "redirects to the actividades list" do
      actividad = Actividad.create! valid_attributes
      delete actividad_url(actividad)
      expect(response).to redirect_to(actividades_url)
    end
  end
end
