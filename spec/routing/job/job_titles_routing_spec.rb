require "spec_helper"

describe Job::JobTitlesController do
  describe "routing" do

    it "routes to #index" do
      get("/job/job_titles").should route_to("job/job_titles#index")
    end

    it "routes to #new" do
      get("/job/job_titles/new").should route_to("job/job_titles#new")
    end

    it "routes to #show" do
      get("/job/job_titles/1").should route_to("job/job_titles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/job_titles/1/edit").should route_to("job/job_titles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/job_titles").should route_to("job/job_titles#create")
    end

    it "routes to #update" do
      put("/job/job_titles/1").should route_to("job/job_titles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/job_titles/1").should route_to("job/job_titles#destroy", :id => "1")
    end

  end
end
