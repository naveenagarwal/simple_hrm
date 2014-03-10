require 'spec_helper'

describe "job/categories/new" do
  before(:each) do
    assign(:job_category, stub_model(Job::Category).as_new_record)
  end

  it "renders new job_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_categories_path, "post" do
    end
  end
end
