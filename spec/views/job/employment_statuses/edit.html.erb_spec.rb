require 'spec_helper'

describe "job/employment_statuses/edit" do
  before(:each) do
    @job_employment_status = assign(:job_employment_status, stub_model(Job::EmploymentStatus))
  end

  it "renders the edit job_employment_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_employment_status_path(@job_employment_status), "post" do
    end
  end
end
