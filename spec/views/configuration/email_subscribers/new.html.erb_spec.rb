require 'spec_helper'

describe "configuration/email_subscribers/new" do
  before(:each) do
    assign(:configuration_email_subscriber, stub_model(Configuration::EmailSubscriber).as_new_record)
  end

  it "renders new configuration_email_subscriber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_email_subscribers_path, "post" do
    end
  end
end
