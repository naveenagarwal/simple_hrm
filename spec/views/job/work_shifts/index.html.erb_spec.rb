require 'spec_helper'

describe "job/work_shifts/index" do
  before(:each) do
    assign(:job_work_shifts, [
      stub_model(Job::WorkShift,
        :name => "Name"
      ),
      stub_model(Job::WorkShift,
        :name => "Name"
      )
    ])
  end

  it "renders a list of job/work_shifts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
