require "spec_helper"

describe Qualifications::EducationsController do
  describe "routing" do

    it "routes to #index" do
      get("/qualifications/educations").should route_to("qualifications/educations#index")
    end

    it "routes to #new" do
      get("/qualifications/educations/new").should route_to("qualifications/educations#new")
    end

    it "routes to #show" do
      get("/qualifications/educations/1").should route_to("qualifications/educations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qualifications/educations/1/edit").should route_to("qualifications/educations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qualifications/educations").should route_to("qualifications/educations#create")
    end

    it "routes to #update" do
      put("/qualifications/educations/1").should route_to("qualifications/educations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qualifications/educations/1").should route_to("qualifications/educations#destroy", :id => "1")
    end

  end
end
