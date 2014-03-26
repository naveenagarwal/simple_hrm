require "spec_helper"

describe Document::CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/document/categories").should route_to("document/categories#index")
    end

    it "routes to #new" do
      get("/document/categories/new").should route_to("document/categories#new")
    end

    it "routes to #show" do
      get("/document/categories/1").should route_to("document/categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/document/categories/1/edit").should route_to("document/categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/document/categories").should route_to("document/categories#create")
    end

    it "routes to #update" do
      put("/document/categories/1").should route_to("document/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/document/categories/1").should route_to("document/categories#destroy", :id => "1")
    end

  end
end
