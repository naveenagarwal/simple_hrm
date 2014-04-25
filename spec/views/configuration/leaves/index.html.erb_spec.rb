require 'spec_helper'

describe "configuration/leaves/index" do
  before(:each) do
    assign(:configuration_leaves, [
      stub_model(Configuration::Leafe),
      stub_model(Configuration::Leafe)
    ])
  end

  it "renders a list of configuration/leaves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
