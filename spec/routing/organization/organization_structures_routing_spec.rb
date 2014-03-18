require "spec_helper"

describe Organization::OrganizationStructuresController do
  describe "routing" do

    it "routes to #index" do
      get("/organization/organization_structures").should route_to("organization/organization_structures#index")
    end

    it "routes to #new" do
      get("/organization/organization_structures/new").should route_to("organization/organization_structures#new")
    end

    it "routes to #show" do
      get("/organization/organization_structures/1").should route_to("organization/organization_structures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organization/organization_structures/1/edit").should route_to("organization/organization_structures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organization/organization_structures").should route_to("organization/organization_structures#create")
    end

    it "routes to #update" do
      put("/organization/organization_structures/1").should route_to("organization/organization_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organization/organization_structures/1").should route_to("organization/organization_structures#destroy", :id => "1")
    end

  end
end
