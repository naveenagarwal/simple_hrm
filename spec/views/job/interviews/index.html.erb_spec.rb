require 'spec_helper'

describe "job/interviews/index" do
  before(:each) do
    assign(:job_interviews, [
      stub_model(Job::Interview),
      stub_model(Job::Interview)
    ])
  end

  it "renders a list of job/interviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
