require 'spec_helper'

describe "UserManagement::Users" do
  describe "GET /user_management_users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get user_management_users_path
      response.status.should be(200)
    end
  end
end
