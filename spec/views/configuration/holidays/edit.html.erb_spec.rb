require 'spec_helper'

describe "configuration/holidays/edit" do
  before(:each) do
    @configuration_holiday = assign(:configuration_holiday, stub_model(Configuration::Holiday))
  end

  it "renders the edit configuration_holiday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_holiday_path(@configuration_holiday), "post" do
    end
  end
end
