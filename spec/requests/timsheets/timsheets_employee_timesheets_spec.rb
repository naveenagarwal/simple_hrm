require 'spec_helper'

describe "Timsheets::EmployeeTimesheets" do
  describe "GET /timsheets_employee_timesheets" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get timsheets_employee_timesheets_path
      response.status.should be(200)
    end
  end
end
