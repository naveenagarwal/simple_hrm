require 'spec_helper'

describe "configuration/leave_periods/new" do
  before(:each) do
    assign(:configuration_leave_period, stub_model(Configuration::LeavePeriod).as_new_record)
  end

  it "renders new configuration_leave_period form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_periods_path, "post" do
    end
  end
end
