require 'spec_helper'

describe "Configuration::LeavePeriods" do
  describe "GET /configuration_leave_periods" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get configuration_leave_periods_path
      response.status.should be(200)
    end
  end
end
