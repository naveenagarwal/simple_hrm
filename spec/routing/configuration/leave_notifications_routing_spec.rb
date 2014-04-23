require "spec_helper"

describe Configuration::LeaveNotificationsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/leave_notifications").should route_to("configuration/leave_notifications#index")
    end

    it "routes to #new" do
      get("/configuration/leave_notifications/new").should route_to("configuration/leave_notifications#new")
    end

    it "routes to #show" do
      get("/configuration/leave_notifications/1").should route_to("configuration/leave_notifications#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/leave_notifications/1/edit").should route_to("configuration/leave_notifications#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/leave_notifications").should route_to("configuration/leave_notifications#create")
    end

    it "routes to #update" do
      put("/configuration/leave_notifications/1").should route_to("configuration/leave_notifications#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/leave_notifications/1").should route_to("configuration/leave_notifications#destroy", :id => "1")
    end

  end
end
