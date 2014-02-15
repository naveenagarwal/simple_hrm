require 'spec_helper'

describe "user_management/users/index" do
  before(:each) do
    assign(:user_management_users, [
      stub_model(UserManagement::User),
      stub_model(UserManagement::User)
    ])
  end

  it "renders a list of user_management/users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
