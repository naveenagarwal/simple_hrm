require 'spec_helper'

describe "configuration/work_weeks/index" do
  before(:each) do
    assign(:configuration_work_weeks, [
      stub_model(Configuration::WorkWeek),
      stub_model(Configuration::WorkWeek)
    ])
  end

  it "renders a list of configuration/work_weeks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
