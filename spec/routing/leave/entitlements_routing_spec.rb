require "spec_helper"

describe Leave::EntitlementsController do
  describe "routing" do

    it "routes to #index" do
      get("/leave/entitlements").should route_to("leave/entitlements#index")
    end

    it "routes to #new" do
      get("/leave/entitlements/new").should route_to("leave/entitlements#new")
    end

    it "routes to #show" do
      get("/leave/entitlements/1").should route_to("leave/entitlements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leave/entitlements/1/edit").should route_to("leave/entitlements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leave/entitlements").should route_to("leave/entitlements#create")
    end

    it "routes to #update" do
      put("/leave/entitlements/1").should route_to("leave/entitlements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leave/entitlements/1").should route_to("leave/entitlements#destroy", :id => "1")
    end

  end
end
