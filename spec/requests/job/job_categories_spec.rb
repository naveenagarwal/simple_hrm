require 'spec_helper'

describe "Job::Categories" do
  describe "GET /job_categories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get job_categories_path
      response.status.should be(200)
    end
  end
end
