require "spec_helper"

describe Job::InterviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/job/interviews").should route_to("job/interviews#index")
    end

    it "routes to #new" do
      get("/job/interviews/new").should route_to("job/interviews#new")
    end

    it "routes to #show" do
      get("/job/interviews/1").should route_to("job/interviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/interviews/1/edit").should route_to("job/interviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/interviews").should route_to("job/interviews#create")
    end

    it "routes to #update" do
      put("/job/interviews/1").should route_to("job/interviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/interviews/1").should route_to("job/interviews#destroy", :id => "1")
    end

  end
end
