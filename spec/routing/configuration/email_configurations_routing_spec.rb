require "spec_helper"

describe Configuration::EmailConfigurationsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/email_configurations").should route_to("configuration/email_configurations#index")
    end

    it "routes to #new" do
      get("/configuration/email_configurations/new").should route_to("configuration/email_configurations#new")
    end

    it "routes to #show" do
      get("/configuration/email_configurations/1").should route_to("configuration/email_configurations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/email_configurations/1/edit").should route_to("configuration/email_configurations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/email_configurations").should route_to("configuration/email_configurations#create")
    end

    it "routes to #update" do
      put("/configuration/email_configurations/1").should route_to("configuration/email_configurations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/email_configurations/1").should route_to("configuration/email_configurations#destroy", :id => "1")
    end

  end
end
