require 'spec_helper'

describe "job/categories/show" do
  before(:each) do
    @job_category = assign(:job_category, stub_model(Job::Category))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
