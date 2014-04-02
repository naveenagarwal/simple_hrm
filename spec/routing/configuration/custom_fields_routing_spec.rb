require "spec_helper"

describe Configuration::CustomFieldsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/custom_fields").should route_to("configuration/custom_fields#index")
    end

    it "routes to #new" do
      get("/configuration/custom_fields/new").should route_to("configuration/custom_fields#new")
    end

    it "routes to #show" do
      get("/configuration/custom_fields/1").should route_to("configuration/custom_fields#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/custom_fields/1/edit").should route_to("configuration/custom_fields#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/custom_fields").should route_to("configuration/custom_fields#create")
    end

    it "routes to #update" do
      put("/configuration/custom_fields/1").should route_to("configuration/custom_fields#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/custom_fields/1").should route_to("configuration/custom_fields#destroy", :id => "1")
    end

  end
end
