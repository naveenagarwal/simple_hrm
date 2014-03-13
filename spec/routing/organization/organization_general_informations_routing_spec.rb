require "spec_helper"

describe Organization::OrganizationGeneralInformationsController do
  describe "routing" do

    it "routes to #index" do
      get("/organization/organization_general_informations").should route_to("organization/organization_general_informations#index")
    end

    it "routes to #new" do
      get("/organization/organization_general_informations/new").should route_to("organization/organization_general_informations#new")
    end

    it "routes to #show" do
      get("/organization/organization_general_informations/1").should route_to("organization/organization_general_informations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organization/organization_general_informations/1/edit").should route_to("organization/organization_general_informations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organization/organization_general_informations").should route_to("organization/organization_general_informations#create")
    end

    it "routes to #update" do
      put("/organization/organization_general_informations/1").should route_to("organization/organization_general_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organization/organization_general_informations/1").should route_to("organization/organization_general_informations#destroy", :id => "1")
    end

  end
end
