require 'spec_helper'

describe "job/job_titles/show" do
  before(:each) do
    @job_job_title = assign(:job_job_title, stub_model(Job::JobTitle,
      :name => "Name",
      :description => "MyText",
      :specification => "Specification",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Specification/)
    rendered.should match(/MyText/)
  end
end
