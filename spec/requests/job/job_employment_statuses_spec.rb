require 'spec_helper'

describe "Job::EmploymentStatuses" do
  describe "GET /job_employment_statuses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_employment_statuses_path
      response.status.should be(200)
    end
  end
end
