require 'spec_helper'

describe "configuration/email_configurations/edit" do
  before(:each) do
    @configuration_email_configuration = assign(:configuration_email_configuration, stub_model(Configuration::EmailConfiguration))
  end

  it "renders the edit configuration_email_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_email_configuration_path(@configuration_email_configuration), "post" do
    end
  end
end
