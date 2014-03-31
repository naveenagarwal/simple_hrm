require 'spec_helper'

describe "notifications/index" do
  before(:each) do
    assign(:notifications, [
      stub_model(Notification,
        :event_name => "Event Name",
        :employee_name => "MyText",
        :event_id => 1,
        :notified_before => 2
      ),
      stub_model(Notification,
        :event_name => "Event Name",
        :employee_name => "MyText",
        :event_id => 1,
        :notified_before => 2
      )
    ])
  end

  it "renders a list of notifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Event Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
