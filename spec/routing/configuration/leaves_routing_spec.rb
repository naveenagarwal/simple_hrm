require "spec_helper"

describe Configuration::LeavesController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/leaves").should route_to("configuration/leaves#index")
    end

    it "routes to #new" do
      get("/configuration/leaves/new").should route_to("configuration/leaves#new")
    end

    it "routes to #show" do
      get("/configuration/leaves/1").should route_to("configuration/leaves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/leaves/1/edit").should route_to("configuration/leaves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/leaves").should route_to("configuration/leaves#create")
    end

    it "routes to #update" do
      put("/configuration/leaves/1").should route_to("configuration/leaves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/leaves/1").should route_to("configuration/leaves#destroy", :id => "1")
    end

  end
end
