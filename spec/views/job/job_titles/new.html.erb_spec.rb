require 'spec_helper'

describe "job/job_titles/new" do
  before(:each) do
    assign(:job_job_title, stub_model(Job::JobTitle,
      :name => "MyString",
      :description => "MyText",
      :specification => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new job_job_title form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_job_titles_path, "post" do
      assert_select "input#job_job_title_name[name=?]", "job_job_title[name]"
      assert_select "textarea#job_job_title_description[name=?]", "job_job_title[description]"
      assert_select "input#job_job_title_specification[name=?]", "job_job_title[specification]"
      assert_select "textarea#job_job_title_note[name=?]", "job_job_title[note]"
    end
  end
end
