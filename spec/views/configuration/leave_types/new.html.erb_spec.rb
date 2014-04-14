require 'spec_helper'

describe "configuration/leave_types/new" do
  before(:each) do
    assign(:configuration_leave_type, stub_model(Configuration::LeaveType).as_new_record)
  end

  it "renders new configuration_leave_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_types_path, "post" do
    end
  end
end
