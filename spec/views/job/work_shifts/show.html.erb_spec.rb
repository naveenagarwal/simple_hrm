require 'spec_helper'

describe "job/work_shifts/show" do
  before(:each) do
    @job_work_shift = assign(:job_work_shift, stub_model(Job::WorkShift,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
