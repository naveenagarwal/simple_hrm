require 'spec_helper'

describe "job/salary_components/index" do
  before(:each) do
    assign(:job_salary_components, [
      stub_model(Job::SalaryComponent),
      stub_model(Job::SalaryComponent)
    ])
  end

  it "renders a list of job/salary_components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
