require 'spec_helper'

describe "timsheets/employee_timesheets/new" do
  before(:each) do
    assign(:timsheets_employee_timesheet, stub_model(Timsheets::EmployeeTimesheet).as_new_record)
  end

  it "renders new timsheets_employee_timesheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", timsheets_employee_timesheets_path, "post" do
    end
  end
end
