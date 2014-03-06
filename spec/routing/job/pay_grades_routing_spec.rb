require "spec_helper"

describe Job::PayGradesController do
  describe "routing" do

    it "routes to #index" do
      get("/job/pay_grades").should route_to("job/pay_grades#index")
    end

    it "routes to #new" do
      get("/job/pay_grades/new").should route_to("job/pay_grades#new")
    end

    it "routes to #show" do
      get("/job/pay_grades/1").should route_to("job/pay_grades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/job/pay_grades/1/edit").should route_to("job/pay_grades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/job/pay_grades").should route_to("job/pay_grades#create")
    end

    it "routes to #update" do
      put("/job/pay_grades/1").should route_to("job/pay_grades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/job/pay_grades/1").should route_to("job/pay_grades#destroy", :id => "1")
    end

  end
end
