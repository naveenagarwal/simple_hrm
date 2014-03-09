require 'spec_helper'

describe "job/employment_statuses/show" do
  before(:each) do
    @job_employment_status = assign(:job_employment_status, stub_model(Job::EmploymentStatus))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
