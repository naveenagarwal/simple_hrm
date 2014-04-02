require 'spec_helper'

describe "configuration/custom_fields/index" do
  before(:each) do
    assign(:configuration_custom_fields, [
      stub_model(Configuration::CustomField),
      stub_model(Configuration::CustomField)
    ])
  end

  it "renders a list of configuration/custom_fields" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
