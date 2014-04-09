require 'spec_helper'

describe "Leave::Entitlements" do
  describe "GET /leave_entitlements" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get leave_entitlements_path
      response.status.should be(200)
    end
  end
end
