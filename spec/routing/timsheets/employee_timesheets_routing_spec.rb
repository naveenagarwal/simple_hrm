require "spec_helper"

describe Timsheets::EmployeeTimesheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/timsheets/employee_timesheets").should route_to("timsheets/employee_timesheets#index")
    end

    it "routes to #new" do
      get("/timsheets/employee_timesheets/new").should route_to("timsheets/employee_timesheets#new")
    end

    it "routes to #show" do
      get("/timsheets/employee_timesheets/1").should route_to("timsheets/employee_timesheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/timsheets/employee_timesheets/1/edit").should route_to("timsheets/employee_timesheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/timsheets/employee_timesheets").should route_to("timsheets/employee_timesheets#create")
    end

    it "routes to #update" do
      put("/timsheets/employee_timesheets/1").should route_to("timsheets/employee_timesheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/timsheets/employee_timesheets/1").should route_to("timsheets/employee_timesheets#destroy", :id => "1")
    end

  end
end
