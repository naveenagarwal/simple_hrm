require "spec_helper"

describe Configuration::CsvImportsController do
  describe "routing" do

    it "routes to #index" do
      get("/configuration/csv_imports").should route_to("configuration/csv_imports#index")
    end

    it "routes to #new" do
      get("/configuration/csv_imports/new").should route_to("configuration/csv_imports#new")
    end

    it "routes to #show" do
      get("/configuration/csv_imports/1").should route_to("configuration/csv_imports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/configuration/csv_imports/1/edit").should route_to("configuration/csv_imports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/configuration/csv_imports").should route_to("configuration/csv_imports#create")
    end

    it "routes to #update" do
      put("/configuration/csv_imports/1").should route_to("configuration/csv_imports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/configuration/csv_imports/1").should route_to("configuration/csv_imports#destroy", :id => "1")
    end

  end
end
