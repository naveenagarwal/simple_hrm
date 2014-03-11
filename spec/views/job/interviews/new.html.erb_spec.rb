require 'spec_helper'

describe "job/interviews/new" do
  before(:each) do
    assign(:job_interview, stub_model(Job::Interview).as_new_record)
  end

  it "renders new job_interview form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_interviews_path, "post" do
    end
  end
end
