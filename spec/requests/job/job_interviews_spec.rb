require 'spec_helper'

describe "Job::Interviews" do
  describe "GET /job_interviews" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_interviews_path
      response.status.should be(200)
    end
  end
end
