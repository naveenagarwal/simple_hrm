require 'spec_helper'

describe "job/salary_components/show" do
  before(:each) do
    @job_salary_component = assign(:job_salary_component, stub_model(Job::SalaryComponent))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
