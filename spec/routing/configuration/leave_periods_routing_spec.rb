require "spec_helper"

describe Configuration::LeavePeriodsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/leave_periods").should route_to("configuration/leave_periods#index")
    end

    it "routes to #new" do
      get("/configuration/leave_periods/new").should route_to("configuration/leave_periods#new")
    end

    it "routes to #show" do
      get("/configuration/leave_periods/1").should route_to("configuration/leave_periods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/leave_periods/1/edit").should route_to("configuration/leave_periods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/leave_periods").should route_to("configuration/leave_periods#create")
    end

    it "routes to #update" do
      put("/configuration/leave_periods/1").should route_to("configuration/leave_periods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/leave_periods/1").should route_to("configuration/leave_periods#destroy", :id => "1")
    end

  end
end
