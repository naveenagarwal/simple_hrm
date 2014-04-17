require 'spec_helper'

describe "configuration/work_weeks/edit" do
  before(:each) do
    @configuration_work_week = assign(:configuration_work_week, stub_model(Configuration::WorkWeek))
  end

  it "renders the edit configuration_work_week form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_work_week_path(@configuration_work_week), "post" do
    end
  end
end
