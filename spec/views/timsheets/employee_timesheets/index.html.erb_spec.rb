require 'spec_helper'

describe "timsheets/employee_timesheets/index" do
  before(:each) do
    assign(:timsheets_employee_timesheets, [
      stub_model(Timsheets::EmployeeTimesheet),
      stub_model(Timsheets::EmployeeTimesheet)
    ])
  end

  it "renders a list of timsheets/employee_timesheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
