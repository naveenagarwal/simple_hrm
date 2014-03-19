require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Organization::OrganizationStructuresController do

  # This should return the minimal set of attributes required to create a valid
  # Organization::OrganizationStructure. As you add validations to Organization::OrganizationStructure, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "unit_id" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Organization::OrganizationStructuresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all organization_organization_structures as @organization_organization_structures" do
      organization_structure = Organization::OrganizationStructure.create! valid_attributes
      get :index, {}, valid_session
      assigns(:organization_organization_structures).should eq([organization_structure])
    end
  end

  describe "GET show" do
    it "assigns the requested organization_organization_structure as @organization_organization_structure" do
      organization_structure = Organization::OrganizationStructure.create! valid_attributes
      get :show, {:id => organization_structure.to_param}, valid_session
      assigns(:organization_organization_structure).should eq(organization_structure)
    end
  end

  describe "GET new" do
    it "assigns a new organization_organization_structure as @organization_organization_structure" do
      get :new, {}, valid_session
      assigns(:organization_organization_structure).should be_a_new(Organization::OrganizationStructure)
    end
  end

  describe "GET edit" do
    it "assigns the requested organization_organization_structure as @organization_organization_structure" do
      organization_structure = Organization::OrganizationStructure.create! valid_attributes
      get :edit, {:id => organization_structure.to_param}, valid_session
      assigns(:organization_organization_structure).should eq(organization_structure)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Organization::OrganizationStructure" do
        expect {
          post :create, {:organization_organization_structure => valid_attributes}, valid_session
        }.to change(Organization::OrganizationStructure, :count).by(1)
      end

      it "assigns a newly created organization_organization_structure as @organization_organization_structure" do
        post :create, {:organization_organization_structure => valid_attributes}, valid_session
        assigns(:organization_organization_structure).should be_a(Organization::OrganizationStructure)
        assigns(:organization_organization_structure).should be_persisted
      end

      it "redirects to the created organization_organization_structure" do
        post :create, {:organization_organization_structure => valid_attributes}, valid_session
        response.should redirect_to(Organization::OrganizationStructure.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved organization_organization_structure as @organization_organization_structure" do
        # Trigger the behavior that occurs when invalid params are submitted
        Organization::OrganizationStructure.any_instance.stub(:save).and_return(false)
        post :create, {:organization_organization_structure => { "unit_id" => "invalid value" }}, valid_session
        assigns(:organization_organization_structure).should be_a_new(Organization::OrganizationStructure)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Organization::OrganizationStructure.any_instance.stub(:save).and_return(false)
        post :create, {:organization_organization_structure => { "unit_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested organization_organization_structure" do
        organization_structure = Organization::OrganizationStructure.create! valid_attributes
        # Assuming there are no other organization_organization_structures in the database, this
        # specifies that the Organization::OrganizationStructure created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Organization::OrganizationStructure.any_instance.should_receive(:update).with({ "unit_id" => "MyString" })
        put :update, {:id => organization_structure.to_param, :organization_organization_structure => { "unit_id" => "MyString" }}, valid_session
      end

      it "assigns the requested organization_organization_structure as @organization_organization_structure" do
        organization_structure = Organization::OrganizationStructure.create! valid_attributes
        put :update, {:id => organization_structure.to_param, :organization_organization_structure => valid_attributes}, valid_session
        assigns(:organization_organization_structure).should eq(organization_structure)
      end

      it "redirects to the organization_organization_structure" do
        organization_structure = Organization::OrganizationStructure.create! valid_attributes
        put :update, {:id => organization_structure.to_param, :organization_organization_structure => valid_attributes}, valid_session
        response.should redirect_to(organization_structure)
      end
    end

    describe "with invalid params" do
      it "assigns the organization_organization_structure as @organization_organization_structure" do
        organization_structure = Organization::OrganizationStructure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Organization::OrganizationStructure.any_instance.stub(:save).and_return(false)
        put :update, {:id => organization_structure.to_param, :organization_organization_structure => { "unit_id" => "invalid value" }}, valid_session
        assigns(:organization_organization_structure).should eq(organization_structure)
      end

      it "re-renders the 'edit' template" do
        organization_structure = Organization::OrganizationStructure.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Organization::OrganizationStructure.any_instance.stub(:save).and_return(false)
        put :update, {:id => organization_structure.to_param, :organization_organization_structure => { "unit_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested organization_organization_structure" do
      organization_structure = Organization::OrganizationStructure.create! valid_attributes
      expect {
        delete :destroy, {:id => organization_structure.to_param}, valid_session
      }.to change(Organization::OrganizationStructure, :count).by(-1)
    end

    it "redirects to the organization_organization_structures list" do
      organization_structure = Organization::OrganizationStructure.create! valid_attributes
      delete :destroy, {:id => organization_structure.to_param}, valid_session
      response.should redirect_to(organization_organization_structures_url)
    end
  end

end