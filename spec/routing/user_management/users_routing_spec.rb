require "spec_helper"

describe UserManagement::UsersController do
  describe "routing" do

    it "routes to #index" do
      get("/user_management/users").should route_to("user_management/users#index")
    end

    it "routes to #new" do
      get("/user_management/users/new").should route_to("user_management/users#new")
    end

    it "routes to #show" do
      get("/user_management/users/1").should route_to("user_management/users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_management/users/1/edit").should route_to("user_management/users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_management/users").should route_to("user_management/users#create")
    end

    it "routes to #update" do
      put("/user_management/users/1").should route_to("user_management/users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_management/users/1").should route_to("user_management/users#destroy", :id => "1")
    end

  end
end
