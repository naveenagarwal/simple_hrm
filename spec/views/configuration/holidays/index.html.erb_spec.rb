require 'spec_helper'

describe "configuration/holidays/index" do
  before(:each) do
    assign(:configuration_holidays, [
      stub_model(Configuration::Holiday),
      stub_model(Configuration::Holiday)
    ])
  end

  it "renders a list of configuration/holidays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
