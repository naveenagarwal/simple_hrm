require "spec_helper"

describe Organization::OrganizationLocationsController do
  describe "routing" do

    it "routes to #index" do
      get("/organization/organization_locations").should route_to("organization/organization_locations#index")
    end

    it "routes to #new" do
      get("/organization/organization_locations/new").should route_to("organization/organization_locations#new")
    end

    it "routes to #show" do
      get("/organization/organization_locations/1").should route_to("organization/organization_locations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organization/organization_locations/1/edit").should route_to("organization/organization_locations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organization/organization_locations").should route_to("organization/organization_locations#create")
    end

    it "routes to #update" do
      put("/organization/organization_locations/1").should route_to("organization/organization_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organization/organization_locations/1").should route_to("organization/organization_locations#destroy", :id => "1")
    end

  end
end
