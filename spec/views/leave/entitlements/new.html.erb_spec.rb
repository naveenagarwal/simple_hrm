require 'spec_helper'

describe "leave/entitlements/new" do
  before(:each) do
    assign(:leave_entitlement, stub_model(Leave::Entitlement).as_new_record)
  end

  it "renders new leave_entitlement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", leave_entitlements_path, "post" do
    end
  end
end
