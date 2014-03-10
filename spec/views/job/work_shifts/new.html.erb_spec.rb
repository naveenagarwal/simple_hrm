require 'spec_helper'

describe "job/work_shifts/new" do
  before(:each) do
    assign(:job_work_shift, stub_model(Job::WorkShift,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new job_work_shift form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_work_shifts_path, "post" do
      assert_select "input#job_work_shift_name[name=?]", "job_work_shift[name]"
    end
  end
end
