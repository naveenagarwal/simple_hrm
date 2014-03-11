require 'spec_helper'

describe "job/interviews/edit" do
  before(:each) do
    @job_interview = assign(:job_interview, stub_model(Job::Interview))
  end

  it "renders the edit job_interview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_interview_path(@job_interview), "post" do
    end
  end
end
