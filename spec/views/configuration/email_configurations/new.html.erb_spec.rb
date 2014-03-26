require 'spec_helper'

describe "configuration/email_configurations/new" do
  before(:each) do
    assign(:configuration_email_configuration, stub_model(Configuration::EmailConfiguration).as_new_record)
  end

  it "renders new configuration_email_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_email_configurations_path, "post" do
    end
  end
end
