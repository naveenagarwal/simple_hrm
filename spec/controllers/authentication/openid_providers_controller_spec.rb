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

describe Authentication::OpenidProvidersController do

  # This should return the minimal set of attributes required to create a valid
  # Authentication::OpenidProvider. As you add validations to Authentication::OpenidProvider, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Authentication::OpenidProvidersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all authentication_openid_providers as @authentication_openid_providers" do
      openid_provider = Authentication::OpenidProvider.create! valid_attributes
      get :index, {}, valid_session
      assigns(:authentication_openid_providers).should eq([openid_provider])
    end
  end

  describe "GET show" do
    it "assigns the requested authentication_openid_provider as @authentication_openid_provider" do
      openid_provider = Authentication::OpenidProvider.create! valid_attributes
      get :show, {:id => openid_provider.to_param}, valid_session
      assigns(:authentication_openid_provider).should eq(openid_provider)
    end
  end

  describe "GET new" do
    it "assigns a new authentication_openid_provider as @authentication_openid_provider" do
      get :new, {}, valid_session
      assigns(:authentication_openid_provider).should be_a_new(Authentication::OpenidProvider)
    end
  end

  describe "GET edit" do
    it "assigns the requested authentication_openid_provider as @authentication_openid_provider" do
      openid_provider = Authentication::OpenidProvider.create! valid_attributes
      get :edit, {:id => openid_provider.to_param}, valid_session
      assigns(:authentication_openid_provider).should eq(openid_provider)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Authentication::OpenidProvider" do
        expect {
          post :create, {:authentication_openid_provider => valid_attributes}, valid_session
        }.to change(Authentication::OpenidProvider, :count).by(1)
      end

      it "assigns a newly created authentication_openid_provider as @authentication_openid_provider" do
        post :create, {:authentication_openid_provider => valid_attributes}, valid_session
        assigns(:authentication_openid_provider).should be_a(Authentication::OpenidProvider)
        assigns(:authentication_openid_provider).should be_persisted
      end

      it "redirects to the created authentication_openid_provider" do
        post :create, {:authentication_openid_provider => valid_attributes}, valid_session
        response.should redirect_to(Authentication::OpenidProvider.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved authentication_openid_provider as @authentication_openid_provider" do
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication::OpenidProvider.any_instance.stub(:save).and_return(false)
        post :create, {:authentication_openid_provider => {  }}, valid_session
        assigns(:authentication_openid_provider).should be_a_new(Authentication::OpenidProvider)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication::OpenidProvider.any_instance.stub(:save).and_return(false)
        post :create, {:authentication_openid_provider => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested authentication_openid_provider" do
        openid_provider = Authentication::OpenidProvider.create! valid_attributes
        # Assuming there are no other authentication_openid_providers in the database, this
        # specifies that the Authentication::OpenidProvider created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Authentication::OpenidProvider.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => openid_provider.to_param, :authentication_openid_provider => { "these" => "params" }}, valid_session
      end

      it "assigns the requested authentication_openid_provider as @authentication_openid_provider" do
        openid_provider = Authentication::OpenidProvider.create! valid_attributes
        put :update, {:id => openid_provider.to_param, :authentication_openid_provider => valid_attributes}, valid_session
        assigns(:authentication_openid_provider).should eq(openid_provider)
      end

      it "redirects to the authentication_openid_provider" do
        openid_provider = Authentication::OpenidProvider.create! valid_attributes
        put :update, {:id => openid_provider.to_param, :authentication_openid_provider => valid_attributes}, valid_session
        response.should redirect_to(openid_provider)
      end
    end

    describe "with invalid params" do
      it "assigns the authentication_openid_provider as @authentication_openid_provider" do
        openid_provider = Authentication::OpenidProvider.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication::OpenidProvider.any_instance.stub(:save).and_return(false)
        put :update, {:id => openid_provider.to_param, :authentication_openid_provider => {  }}, valid_session
        assigns(:authentication_openid_provider).should eq(openid_provider)
      end

      it "re-renders the 'edit' template" do
        openid_provider = Authentication::OpenidProvider.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Authentication::OpenidProvider.any_instance.stub(:save).and_return(false)
        put :update, {:id => openid_provider.to_param, :authentication_openid_provider => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested authentication_openid_provider" do
      openid_provider = Authentication::OpenidProvider.create! valid_attributes
      expect {
        delete :destroy, {:id => openid_provider.to_param}, valid_session
      }.to change(Authentication::OpenidProvider, :count).by(-1)
    end

    it "redirects to the authentication_openid_providers list" do
      openid_provider = Authentication::OpenidProvider.create! valid_attributes
      delete :destroy, {:id => openid_provider.to_param}, valid_session
      response.should redirect_to(authentication_openid_providers_url)
    end
  end

end