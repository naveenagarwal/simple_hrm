require 'spec_helper'

describe "job/interviews/show" do
  before(:each) do
    @job_interview = assign(:job_interview, stub_model(Job::Interview))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
