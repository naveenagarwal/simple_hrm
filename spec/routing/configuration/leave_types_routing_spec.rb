require "spec_helper"

describe Configuration::LeaveTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/leave_types").should route_to("configuration/leave_types#index")
    end

    it "routes to #new" do
      get("/configuration/leave_types/new").should route_to("configuration/leave_types#new")
    end

    it "routes to #show" do
      get("/configuration/leave_types/1").should route_to("configuration/leave_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/leave_types/1/edit").should route_to("configuration/leave_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/leave_types").should route_to("configuration/leave_types#create")
    end

    it "routes to #update" do
      put("/configuration/leave_types/1").should route_to("configuration/leave_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/leave_types/1").should route_to("configuration/leave_types#destroy", :id => "1")
    end

  end
end
