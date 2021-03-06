require 'spec_helper'

describe "job/salary_components/new" do
  before(:each) do
    assign(:job_salary_component, stub_model(Job::SalaryComponent).as_new_record)
  end

  it "renders new job_salary_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_salary_components_path, "post" do
    end
  end
end
