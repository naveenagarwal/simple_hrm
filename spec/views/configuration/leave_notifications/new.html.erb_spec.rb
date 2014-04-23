require 'spec_helper'

describe "configuration/leave_notifications/new" do
  before(:each) do
    assign(:configuration_leave_notification, stub_model(Configuration::LeaveNotification).as_new_record)
  end

  it "renders new configuration_leave_notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_notifications_path, "post" do
    end
  end
end
