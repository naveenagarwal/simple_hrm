require 'spec_helper'

describe "user_management/roles/show" do
  before(:each) do
    @user_management_role = assign(:user_management_role, stub_model(UserManagement::Role))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
