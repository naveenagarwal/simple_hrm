require 'spec_helper'

describe "configuration/leave_notifications/edit" do
  before(:each) do
    @configuration_leave_notification = assign(:configuration_leave_notification, stub_model(Configuration::LeaveNotification))
  end

  it "renders the edit configuration_leave_notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_notification_path(@configuration_leave_notification), "post" do
    end
  end
end
