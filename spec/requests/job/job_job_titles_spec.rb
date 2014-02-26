require 'spec_helper'

describe "Job::JobTitles" do
  describe "GET /job_job_titles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_job_titles_path
      response.status.should be(200)
    end
  end
end
