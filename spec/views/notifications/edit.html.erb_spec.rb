require 'spec_helper'

describe "notifications/edit" do
  before(:each) do
    @notification = assign(:notification, stub_model(Notification,
      :event_name => "MyString",
      :employee_name => "MyText",
      :event_id => 1,
      :notified_before => 1
    ))
  end

  it "renders the edit notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do
      assert_select "input#notification_event_name[name=?]", "notification[event_name]"
      assert_select "textarea#notification_employee_name[name=?]", "notification[employee_name]"
      assert_select "input#notification_event_id[name=?]", "notification[event_id]"
      assert_select "input#notification_notified_before[name=?]", "notification[notified_before]"
    end
  end
end
