require 'spec_helper'

describe "qualifications/skills/show" do
  before(:each) do
    @qualifications_skill = assign(:qualifications_skill, stub_model(Qualifications::Skill,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
