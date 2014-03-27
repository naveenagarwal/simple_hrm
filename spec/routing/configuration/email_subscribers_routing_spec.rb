require "spec_helper"

describe Configuration::EmailSubscribersController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/email_subscribers").should route_to("configuration/email_subscribers#index")
    end

    it "routes to #new" do
      get("/configuration/email_subscribers/new").should route_to("configuration/email_subscribers#new")
    end

    it "routes to #show" do
      get("/configuration/email_subscribers/1").should route_to("configuration/email_subscribers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/email_subscribers/1/edit").should route_to("configuration/email_subscribers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/email_subscribers").should route_to("configuration/email_subscribers#create")
    end

    it "routes to #update" do
      put("/configuration/email_subscribers/1").should route_to("configuration/email_subscribers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/email_subscribers/1").should route_to("configuration/email_subscribers#destroy", :id => "1")
    end

  end
end
