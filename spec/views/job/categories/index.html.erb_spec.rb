require 'spec_helper'

describe "job/categories/index" do
  before(:each) do
    assign(:job_categories, [
      stub_model(Job::Category),
      stub_model(Job::Category)
    ])
  end

  it "renders a list of job/categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
