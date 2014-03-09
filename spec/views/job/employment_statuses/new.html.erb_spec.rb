require 'spec_helper'

describe "job/employment_statuses/new" do
  before(:each) do
    assign(:job_employment_status, stub_model(Job::EmploymentStatus).as_new_record)
  end

  it "renders new job_employment_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_employment_statuses_path, "post" do
    end
  end
end
