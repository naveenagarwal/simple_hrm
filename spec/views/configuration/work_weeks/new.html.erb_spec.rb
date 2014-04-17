require 'spec_helper'

describe "configuration/work_weeks/new" do
  before(:each) do
    assign(:configuration_work_week, stub_model(Configuration::WorkWeek).as_new_record)
  end

  it "renders new configuration_work_week form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_work_weeks_path, "post" do
    end
  end
end
