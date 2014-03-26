require 'spec_helper'

describe "configuration/email_configurations/index" do
  before(:each) do
    assign(:configuration_email_configurations, [
      stub_model(Configuration::EmailConfiguration),
      stub_model(Configuration::EmailConfiguration)
    ])
  end

  it "renders a list of configuration/email_configurations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
