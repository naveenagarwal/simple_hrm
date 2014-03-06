require 'spec_helper'

describe "job/pay_grades/show" do
  before(:each) do
    @job_pay_grade = assign(:job_pay_grade, stub_model(Job::PayGrade))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
