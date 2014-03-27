require 'spec_helper'

describe "configuration/email_subscribers/edit" do
  before(:each) do
    @configuration_email_subscriber = assign(:configuration_email_subscriber, stub_model(Configuration::EmailSubscriber))
  end

  it "renders the edit configuration_email_subscriber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_email_subscriber_path(@configuration_email_subscriber), "post" do
    end
  end
end
