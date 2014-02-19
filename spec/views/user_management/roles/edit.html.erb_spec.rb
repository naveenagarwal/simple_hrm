require 'spec_helper'

describe "user_management/roles/edit" do
  before(:each) do
    @user_management_role = assign(:user_management_role, stub_model(UserManagement::Role))
  end

  it "renders the edit user_management_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_management_role_path(@user_management_role), "post" do
    end
  end
end
