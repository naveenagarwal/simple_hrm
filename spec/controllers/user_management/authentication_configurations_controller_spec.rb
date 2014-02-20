require File.dirname(__FILE__) + '/../spec_helper'

describe UserManagement::AuthenticationConfigurationsController do
  fixtures :all
  render_views

  it "edit action should render edit template" do
    get :edit, :id => UserManagement::AuthenticationConfiguration.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    UserManagement::AuthenticationConfiguration.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserManagement::AuthenticationConfiguration.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    UserManagement::AuthenticationConfiguration.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserManagement::AuthenticationConfiguration.first
    response.should redirect_to(root_url)
  end

  it "create action should render new template when model is invalid" do
    UserManagement::AuthenticationConfiguration.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    UserManagement::AuthenticationConfiguration.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(root_url)
  end
end
