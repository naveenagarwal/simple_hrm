require 'spec_helper'

describe "user_management/users/edit" do
  before(:each) do
    @user_management_user = assign(:user_management_user, stub_model(UserManagement::User))
  end

  it "renders the edit user_management_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_management_user_path(@user_management_user), "post" do
    end
  end
end
