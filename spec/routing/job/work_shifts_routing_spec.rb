require "spec_helper"

describe Job::WorkShiftsController do
  describe "routing" do

    it "routes to #index" do
      get("/job/work_shifts").should route_to("job/work_shifts#index")
    end

    it "routes to #new" do
      get("/job/work_shifts/new").should route_to("job/work_shifts#new")
    end

    it "routes to #show" do
      get("/job/work_shifts/1").should route_to("job/work_shifts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/work_shifts/1/edit").should route_to("job/work_shifts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/work_shifts").should route_to("job/work_shifts#create")
    end

    it "routes to #update" do
      put("/job/work_shifts/1").should route_to("job/work_shifts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/work_shifts/1").should route_to("job/work_shifts#destroy", :id => "1")
    end

  end
end
