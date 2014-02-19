require "spec_helper"

describe UserManagement::RolesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_management/roles").should route_to("user_management/roles#index")
    end

    it "routes to #new" do
      get("/user_management/roles/new").should route_to("user_management/roles#new")
    end

    it "routes to #show" do
      get("/user_management/roles/1").should route_to("user_management/roles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_management/roles/1/edit").should route_to("user_management/roles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_management/roles").should route_to("user_management/roles#create")
    end

    it "routes to #update" do
      put("/user_management/roles/1").should route_to("user_management/roles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_management/roles/1").should route_to("user_management/roles#destroy", :id => "1")
    end

  end
end
