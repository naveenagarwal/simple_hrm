require "spec_helper"

describe Job::SalaryComponentsController do
  describe "routing" do

    it "routes to #index" do
      get("/job/salary_components").should route_to("job/salary_components#index")
    end

    it "routes to #new" do
      get("/job/salary_components/new").should route_to("job/salary_components#new")
    end

    it "routes to #show" do
      get("/job/salary_components/1").should route_to("job/salary_components#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/salary_components/1/edit").should route_to("job/salary_components#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/salary_components").should route_to("job/salary_components#create")
    end

    it "routes to #update" do
      put("/job/salary_components/1").should route_to("job/salary_components#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/salary_components/1").should route_to("job/salary_components#destroy", :id => "1")
    end

  end
end
