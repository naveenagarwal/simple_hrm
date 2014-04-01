require "spec_helper"

describe Authentication::OpenidProvidersController do
  describe "routing" do

    it "routes to #index" do
      get("/authentication/openid_providers").should route_to("authentication/openid_providers#index")
    end

    it "routes to #new" do
      get("/authentication/openid_providers/new").should route_to("authentication/openid_providers#new")
    end

    it "routes to #show" do
      get("/authentication/openid_providers/1").should route_to("authentication/openid_providers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/authentication/openid_providers/1/edit").should route_to("authentication/openid_providers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/authentication/openid_providers").should route_to("authentication/openid_providers#create")
    end

    it "routes to #update" do
      put("/authentication/openid_providers/1").should route_to("authentication/openid_providers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/authentication/openid_providers/1").should route_to("authentication/openid_providers#destroy", :id => "1")
    end

  end
end
