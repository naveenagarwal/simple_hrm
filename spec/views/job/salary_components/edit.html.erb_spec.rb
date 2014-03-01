require 'spec_helper'

describe "job/salary_components/edit" do
  before(:each) do
    @job_salary_component = assign(:job_salary_component, stub_model(Job::SalaryComponent))
  end

  it "renders the edit job_salary_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_salary_component_path(@job_salary_component), "post" do
    end
  end
end
