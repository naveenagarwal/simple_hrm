require 'spec_helper'

describe "configuration/leave_periods/index" do
  before(:each) do
    assign(:configuration_leave_periods, [
      stub_model(Configuration::LeavePeriod),
      stub_model(Configuration::LeavePeriod)
    ])
  end

  it "renders a list of configuration/leave_periods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
