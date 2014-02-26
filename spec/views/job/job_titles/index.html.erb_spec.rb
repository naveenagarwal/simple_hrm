require 'spec_helper'

describe "job/job_titles/index" do
  before(:each) do
    assign(:job_job_titles, [
      stub_model(Job::JobTitle,
        :name => "Name",
        :description => "MyText",
        :specification => "Specification",
        :note => "MyText"
      ),
      stub_model(Job::JobTitle,
        :name => "Name",
        :description => "MyText",
        :specification => "Specification",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of job/job_titles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Specification".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
