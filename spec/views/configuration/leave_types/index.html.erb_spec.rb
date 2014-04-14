require 'spec_helper'

describe "configuration/leave_types/index" do
  before(:each) do
    assign(:configuration_leave_types, [
      stub_model(Configuration::LeaveType),
      stub_model(Configuration::LeaveType)
    ])
  end

  it "renders a list of configuration/leave_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
