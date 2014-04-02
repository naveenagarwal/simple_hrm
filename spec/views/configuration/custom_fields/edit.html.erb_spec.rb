require 'spec_helper'

describe "configuration/custom_fields/edit" do
  before(:each) do
    @configuration_custom_field = assign(:configuration_custom_field, stub_model(Configuration::CustomField))
  end

  it "renders the edit configuration_custom_field form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_custom_field_path(@configuration_custom_field), "post" do
    end
  end
end
