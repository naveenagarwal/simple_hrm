require "spec_helper"

describe Authentication::LdapConfigurationsController do
  describe "routing" do

    it "routes to #index" do
      get("/authentication/ldap_configurations").should route_to("authentication/ldap_configurations#index")
    end

    it "routes to #new" do
      get("/authentication/ldap_configurations/new").should route_to("authentication/ldap_configurations#new")
    end

    it "routes to #show" do
      get("/authentication/ldap_configurations/1").should route_to("authentication/ldap_configurations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/authentication/ldap_configurations/1/edit").should route_to("authentication/ldap_configurations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/authentication/ldap_configurations").should route_to("authentication/ldap_configurations#create")
    end

    it "routes to #update" do
      put("/authentication/ldap_configurations/1").should route_to("authentication/ldap_configurations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/authentication/ldap_configurations/1").should route_to("authentication/ldap_configurations#destroy", :id => "1")
    end

  end
end
