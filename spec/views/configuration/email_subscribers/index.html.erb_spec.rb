require 'spec_helper'

describe "configuration/email_subscribers/index" do
  before(:each) do
    assign(:configuration_email_subscribers, [
      stub_model(Configuration::EmailSubscriber),
      stub_model(Configuration::EmailSubscriber)
    ])
  end

  it "renders a list of configuration/email_subscribers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
