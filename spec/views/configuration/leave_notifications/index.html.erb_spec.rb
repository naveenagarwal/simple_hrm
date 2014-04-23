require 'spec_helper'

describe "configuration/leave_notifications/index" do
  before(:each) do
    assign(:configuration_leave_notifications, [
      stub_model(Configuration::LeaveNotification),
      stub_model(Configuration::LeaveNotification)
    ])
  end

  it "renders a list of configuration/leave_notifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
