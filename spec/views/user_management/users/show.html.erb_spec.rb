require 'spec_helper'

describe "user_management/users/show" do
  before(:each) do
    @user_management_user = assign(:user_management_user, stub_model(UserManagement::User))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
