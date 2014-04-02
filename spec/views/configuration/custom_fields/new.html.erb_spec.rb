require 'spec_helper'

describe "configuration/custom_fields/new" do
  before(:each) do
    assign(:configuration_custom_field, stub_model(Configuration::CustomField).as_new_record)
  end

  it "renders new configuration_custom_field form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_custom_fields_path, "post" do
    end
  end
end
