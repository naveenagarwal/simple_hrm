require 'spec_helper'

describe "leave/entitlements/index" do
  before(:each) do
    assign(:leave_entitlements, [
      stub_model(Leave::Entitlement),
      stub_model(Leave::Entitlement)
    ])
  end

  it "renders a list of leave/entitlements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
