require 'spec_helper'

describe "user_management/roles/index" do
  before(:each) do
    assign(:user_management_roles, [
      stub_model(UserManagement::Role),
      stub_model(UserManagement::Role)
    ])
  end

  it "renders a list of user_management/roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
