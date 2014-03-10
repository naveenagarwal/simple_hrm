require "spec_helper"

describe Job::CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/job/categories").should route_to("job/categories#index")
    end

    it "routes to #new" do
      get("/job/categories/new").should route_to("job/categories#new")
    end

    it "routes to #show" do
      get("/job/categories/1").should route_to("job/categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/categories/1/edit").should route_to("job/categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/categories").should route_to("job/categories#create")
    end

    it "routes to #update" do
      put("/job/categories/1").should route_to("job/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/categories/1").should route_to("job/categories#destroy", :id => "1")
    end

  end
end
