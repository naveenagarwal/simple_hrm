require 'spec_helper'

describe "configuration/holidays/new" do
  before(:each) do
    assign(:configuration_holiday, stub_model(Configuration::Holiday).as_new_record)
  end

  it "renders new configuration_holiday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_holidays_path, "post" do
    end
  end
end
