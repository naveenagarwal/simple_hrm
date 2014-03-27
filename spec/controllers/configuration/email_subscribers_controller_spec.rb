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

describe Configuration::EmailSubscribersController do

  # This should return the minimal set of attributes required to create a valid
  # Configuration::EmailSubscriber. As you add validations to Configuration::EmailSubscriber, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Configuration::EmailSubscribersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all configuration_email_subscribers as @configuration_email_subscribers" do
      email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
      get :index, {}, valid_session
      assigns(:configuration_email_subscribers).should eq([email_subscriber])
    end
  end

  describe "GET show" do
    it "assigns the requested configuration_email_subscriber as @configuration_email_subscriber" do
      email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
      get :show, {:id => email_subscriber.to_param}, valid_session
      assigns(:configuration_email_subscriber).should eq(email_subscriber)
    end
  end

  describe "GET new" do
    it "assigns a new configuration_email_subscriber as @configuration_email_subscriber" do
      get :new, {}, valid_session
      assigns(:configuration_email_subscriber).should be_a_new(Configuration::EmailSubscriber)
    end
  end

  describe "GET edit" do
    it "assigns the requested configuration_email_subscriber as @configuration_email_subscriber" do
      email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
      get :edit, {:id => email_subscriber.to_param}, valid_session
      assigns(:configuration_email_subscriber).should eq(email_subscriber)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Configuration::EmailSubscriber" do
        expect {
          post :create, {:configuration_email_subscriber => valid_attributes}, valid_session
        }.to change(Configuration::EmailSubscriber, :count).by(1)
      end

      it "assigns a newly created configuration_email_subscriber as @configuration_email_subscriber" do
        post :create, {:configuration_email_subscriber => valid_attributes}, valid_session
        assigns(:configuration_email_subscriber).should be_a(Configuration::EmailSubscriber)
        assigns(:configuration_email_subscriber).should be_persisted
      end

      it "redirects to the created configuration_email_subscriber" do
        post :create, {:configuration_email_subscriber => valid_attributes}, valid_session
        response.should redirect_to(Configuration::EmailSubscriber.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved configuration_email_subscriber as @configuration_email_subscriber" do
        # Trigger the behavior that occurs when invalid params are submitted
        Configuration::EmailSubscriber.any_instance.stub(:save).and_return(false)
        post :create, {:configuration_email_subscriber => {  }}, valid_session
        assigns(:configuration_email_subscriber).should be_a_new(Configuration::EmailSubscriber)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Configuration::EmailSubscriber.any_instance.stub(:save).and_return(false)
        post :create, {:configuration_email_subscriber => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested configuration_email_subscriber" do
        email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
        # Assuming there are no other configuration_email_subscribers in the database, this
        # specifies that the Configuration::EmailSubscriber created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Configuration::EmailSubscriber.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => email_subscriber.to_param, :configuration_email_subscriber => { "these" => "params" }}, valid_session
      end

      it "assigns the requested configuration_email_subscriber as @configuration_email_subscriber" do
        email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
        put :update, {:id => email_subscriber.to_param, :configuration_email_subscriber => valid_attributes}, valid_session
        assigns(:configuration_email_subscriber).should eq(email_subscriber)
      end

      it "redirects to the configuration_email_subscriber" do
        email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
        put :update, {:id => email_subscriber.to_param, :configuration_email_subscriber => valid_attributes}, valid_session
        response.should redirect_to(email_subscriber)
      end
    end

    describe "with invalid params" do
      it "assigns the configuration_email_subscriber as @configuration_email_subscriber" do
        email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Configuration::EmailSubscriber.any_instance.stub(:save).and_return(false)
        put :update, {:id => email_subscriber.to_param, :configuration_email_subscriber => {  }}, valid_session
        assigns(:configuration_email_subscriber).should eq(email_subscriber)
      end

      it "re-renders the 'edit' template" do
        email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Configuration::EmailSubscriber.any_instance.stub(:save).and_return(false)
        put :update, {:id => email_subscriber.to_param, :configuration_email_subscriber => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested configuration_email_subscriber" do
      email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
      expect {
        delete :destroy, {:id => email_subscriber.to_param}, valid_session
      }.to change(Configuration::EmailSubscriber, :count).by(-1)
    end

    it "redirects to the configuration_email_subscribers list" do
      email_subscriber = Configuration::EmailSubscriber.create! valid_attributes
      delete :destroy, {:id => email_subscriber.to_param}, valid_session
      response.should redirect_to(configuration_email_subscribers_url)
    end
  end

end