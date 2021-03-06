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

describe Leave::EntitlementsController do

  # This should return the minimal set of attributes required to create a valid
  # Leave::Entitlement. As you add validations to Leave::Entitlement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Leave::EntitlementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all leave_entitlements as @leave_entitlements" do
      entitlement = Leave::Entitlement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:leave_entitlements).should eq([entitlement])
    end
  end

  describe "GET show" do
    it "assigns the requested leave_entitlement as @leave_entitlement" do
      entitlement = Leave::Entitlement.create! valid_attributes
      get :show, {:id => entitlement.to_param}, valid_session
      assigns(:leave_entitlement).should eq(entitlement)
    end
  end

  describe "GET new" do
    it "assigns a new leave_entitlement as @leave_entitlement" do
      get :new, {}, valid_session
      assigns(:leave_entitlement).should be_a_new(Leave::Entitlement)
    end
  end

  describe "GET edit" do
    it "assigns the requested leave_entitlement as @leave_entitlement" do
      entitlement = Leave::Entitlement.create! valid_attributes
      get :edit, {:id => entitlement.to_param}, valid_session
      assigns(:leave_entitlement).should eq(entitlement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Leave::Entitlement" do
        expect {
          post :create, {:leave_entitlement => valid_attributes}, valid_session
        }.to change(Leave::Entitlement, :count).by(1)
      end

      it "assigns a newly created leave_entitlement as @leave_entitlement" do
        post :create, {:leave_entitlement => valid_attributes}, valid_session
        assigns(:leave_entitlement).should be_a(Leave::Entitlement)
        assigns(:leave_entitlement).should be_persisted
      end

      it "redirects to the created leave_entitlement" do
        post :create, {:leave_entitlement => valid_attributes}, valid_session
        response.should redirect_to(Leave::Entitlement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved leave_entitlement as @leave_entitlement" do
        # Trigger the behavior that occurs when invalid params are submitted
        Leave::Entitlement.any_instance.stub(:save).and_return(false)
        post :create, {:leave_entitlement => {  }}, valid_session
        assigns(:leave_entitlement).should be_a_new(Leave::Entitlement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Leave::Entitlement.any_instance.stub(:save).and_return(false)
        post :create, {:leave_entitlement => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested leave_entitlement" do
        entitlement = Leave::Entitlement.create! valid_attributes
        # Assuming there are no other leave_entitlements in the database, this
        # specifies that the Leave::Entitlement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Leave::Entitlement.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => entitlement.to_param, :leave_entitlement => { "these" => "params" }}, valid_session
      end

      it "assigns the requested leave_entitlement as @leave_entitlement" do
        entitlement = Leave::Entitlement.create! valid_attributes
        put :update, {:id => entitlement.to_param, :leave_entitlement => valid_attributes}, valid_session
        assigns(:leave_entitlement).should eq(entitlement)
      end

      it "redirects to the leave_entitlement" do
        entitlement = Leave::Entitlement.create! valid_attributes
        put :update, {:id => entitlement.to_param, :leave_entitlement => valid_attributes}, valid_session
        response.should redirect_to(entitlement)
      end
    end

    describe "with invalid params" do
      it "assigns the leave_entitlement as @leave_entitlement" do
        entitlement = Leave::Entitlement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Leave::Entitlement.any_instance.stub(:save).and_return(false)
        put :update, {:id => entitlement.to_param, :leave_entitlement => {  }}, valid_session
        assigns(:leave_entitlement).should eq(entitlement)
      end

      it "re-renders the 'edit' template" do
        entitlement = Leave::Entitlement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Leave::Entitlement.any_instance.stub(:save).and_return(false)
        put :update, {:id => entitlement.to_param, :leave_entitlement => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested leave_entitlement" do
      entitlement = Leave::Entitlement.create! valid_attributes
      expect {
        delete :destroy, {:id => entitlement.to_param}, valid_session
      }.to change(Leave::Entitlement, :count).by(-1)
    end

    it "redirects to the leave_entitlements list" do
      entitlement = Leave::Entitlement.create! valid_attributes
      delete :destroy, {:id => entitlement.to_param}, valid_session
      response.should redirect_to(leave_entitlements_url)
    end
  end

end
