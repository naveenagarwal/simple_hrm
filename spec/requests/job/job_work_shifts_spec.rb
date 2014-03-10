require 'spec_helper'

describe "Job::WorkShifts" do
  describe "GET /job_work_shifts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_work_shifts_path
      response.status.should be(200)
    end
  end
end
