require 'spec_helper'

describe "Job::SalaryComponents" do
  describe "GET /job_salary_components" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_salary_components_path
      response.status.should be(200)
    end
  end
end
