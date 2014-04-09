require 'spec_helper'

describe "leave/entitlements/edit" do
  before(:each) do
    @leave_entitlement = assign(:leave_entitlement, stub_model(Leave::Entitlement))
  end

  it "renders the edit leave_entitlement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", leave_entitlement_path(@leave_entitlement), "post" do
    end
  end
end
