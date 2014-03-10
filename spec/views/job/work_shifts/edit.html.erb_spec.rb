require 'spec_helper'

describe "job/work_shifts/edit" do
  before(:each) do
    @job_work_shift = assign(:job_work_shift, stub_model(Job::WorkShift,
      :name => "MyString"
    ))
  end

  it "renders the edit job_work_shift form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_work_shift_path(@job_work_shift), "post" do
      assert_select "input#job_work_shift_name[name=?]", "job_work_shift[name]"
    end
  end
end
