require 'spec_helper'

describe "configuration/leaves/edit" do
  before(:each) do
    @configuration_leafe = assign(:configuration_leafe, stub_model(Configuration::Leafe))
  end

  it "renders the edit configuration_leafe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_leafe_path(@configuration_leafe), "post" do
    end
  end
end
