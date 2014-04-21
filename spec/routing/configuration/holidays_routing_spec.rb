require "spec_helper"

describe Configuration::HolidaysController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/holidays").should route_to("configuration/holidays#index")
    end

    it "routes to #new" do
      get("/configuration/holidays/new").should route_to("configuration/holidays#new")
    end

    it "routes to #show" do
      get("/configuration/holidays/1").should route_to("configuration/holidays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/holidays/1/edit").should route_to("configuration/holidays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/holidays").should route_to("configuration/holidays#create")
    end

    it "routes to #update" do
      put("/configuration/holidays/1").should route_to("configuration/holidays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/holidays/1").should route_to("configuration/holidays#destroy", :id => "1")
    end

  end
end
