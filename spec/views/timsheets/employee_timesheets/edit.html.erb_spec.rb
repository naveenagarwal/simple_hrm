require 'spec_helper'

describe "timsheets/employee_timesheets/edit" do
  before(:each) do
    @timsheets_employee_timesheet = assign(:timsheets_employee_timesheet, stub_model(Timsheets::EmployeeTimesheet))
  end

  it "renders the edit timsheets_employee_timesheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", timsheets_employee_timesheet_path(@timsheets_employee_timesheet), "post" do
    end
  end
end
