require 'spec_helper'

describe "job/categories/edit" do
  before(:each) do
    @job_category = assign(:job_category, stub_model(Job::Category))
  end

  it "renders the edit job_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_category_path(@job_category), "post" do
    end
  end
end
