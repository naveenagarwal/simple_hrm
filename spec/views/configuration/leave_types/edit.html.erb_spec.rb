require 'spec_helper'

describe "configuration/leave_types/edit" do
  before(:each) do
    @configuration_leave_type = assign(:configuration_leave_type, stub_model(Configuration::LeaveType))
  end

  it "renders the edit configuration_leave_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_type_path(@configuration_leave_type), "post" do
    end
  end
end
