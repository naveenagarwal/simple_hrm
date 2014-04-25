require 'spec_helper'

describe "configuration/leaves/new" do
  before(:each) do
    assign(:configuration_leafe, stub_model(Configuration::Leafe).as_new_record)
  end

  it "renders new configuration_leafe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leaves_path, "post" do
    end
  end
end
