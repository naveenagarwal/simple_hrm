require 'spec_helper'

describe "configuration/leave_periods/edit" do
  before(:each) do
    @configuration_leave_period = assign(:configuration_leave_period, stub_model(Configuration::LeavePeriod))
  end

  it "renders the edit configuration_leave_period form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leave_period_path(@configuration_leave_period), "post" do
    end
  end
end
