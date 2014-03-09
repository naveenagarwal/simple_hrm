require "spec_helper"

describe Job::EmploymentStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/job/employment_statuses").should route_to("job/employment_statuses#index")
    end

    it "routes to #new" do
      get("/job/employment_statuses/new").should route_to("job/employment_statuses#new")
    end

    it "routes to #show" do
      get("/job/employment_statuses/1").should route_to("job/employment_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/employment_statuses/1/edit").should route_to("job/employment_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/employment_statuses").should route_to("job/employment_statuses#create")
    end

    it "routes to #update" do
      put("/job/employment_statuses/1").should route_to("job/employment_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/employment_statuses/1").should route_to("job/employment_statuses#destroy", :id => "1")
    end

  end
end
