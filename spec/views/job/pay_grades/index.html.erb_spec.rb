require 'spec_helper'

describe "job/pay_grades/index" do
  before(:each) do
    assign(:job_pay_grades, [
      stub_model(Job::PayGrade),
      stub_model(Job::PayGrade)
    ])
  end

  it "renders a list of job/pay_grades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
