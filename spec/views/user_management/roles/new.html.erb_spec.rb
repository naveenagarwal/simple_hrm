require 'spec_helper'

describe "user_management/roles/new" do
  before(:each) do
    assign(:user_management_role, stub_model(UserManagement::Role).as_new_record)
  end

  it "renders new user_management_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_management_roles_path, "post" do
    end
  end
end
