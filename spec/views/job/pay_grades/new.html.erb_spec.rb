require 'spec_helper'

describe "job/pay_grades/new" do
  before(:each) do
    assign(:job_pay_grade, stub_model(Job::PayGrade).as_new_record)
  end

  it "renders new job_pay_grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_pay_grades_path, "post" do
    end
  end
end
