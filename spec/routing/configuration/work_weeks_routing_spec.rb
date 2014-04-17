require "spec_helper"

describe Configuration::WorkWeeksController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/work_weeks").should route_to("configuration/work_weeks#index")
    end

    it "routes to #new" do
      get("/configuration/work_weeks/new").should route_to("configuration/work_weeks#new")
    end

    it "routes to #show" do
      get("/configuration/work_weeks/1").should route_to("configuration/work_weeks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/work_weeks/1/edit").should route_to("configuration/work_weeks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/work_weeks").should route_to("configuration/work_weeks#create")
    end

    it "routes to #update" do
      put("/configuration/work_weeks/1").should route_to("configuration/work_weeks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/work_weeks/1").should route_to("configuration/work_weeks#destroy", :id => "1")
    end

  end
end
