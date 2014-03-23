require "spec_helper"

describe Qualifications::SkillsController do
  describe "routing" do

    it "routes to #index" do
      get("/qualifications/skills").should route_to("qualifications/skills#index")
    end

    it "routes to #new" do
      get("/qualifications/skills/new").should route_to("qualifications/skills#new")
    end

    it "routes to #show" do
      get("/qualifications/skills/1").should route_to("qualifications/skills#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qualifications/skills/1/edit").should route_to("qualifications/skills#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qualifications/skills").should route_to("qualifications/skills#create")
    end

    it "routes to #update" do
      put("/qualifications/skills/1").should route_to("qualifications/skills#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qualifications/skills/1").should route_to("qualifications/skills#destroy", :id => "1")
    end

  end
end
