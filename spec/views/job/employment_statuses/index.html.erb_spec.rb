require 'spec_helper'

describe "job/employment_statuses/index" do
  before(:each) do
    assign(:job_employment_statuses, [
      stub_model(Job::EmploymentStatus),
      stub_model(Job::EmploymentStatus)
    ])
  end

  it "renders a list of job/employment_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
