require 'spec_helper'

describe "user_management/users/new" do
  before(:each) do
    assign(:user_management_user, stub_model(UserManagement::User).as_new_record)
  end

  it "renders new user_management_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_management_users_path, "post" do
    end
  end
end
