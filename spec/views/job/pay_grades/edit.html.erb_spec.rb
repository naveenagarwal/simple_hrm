require 'spec_helper'

describe "job/pay_grades/edit" do
  before(:each) do
    @job_pay_grade = assign(:job_pay_grade, stub_model(Job::PayGrade))
  end

  it "renders the edit job_pay_grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_pay_grade_path(@job_pay_grade), "post" do
    end
  end
end
