require 'spec_helper'

describe "qualifications/educations/index" do
  before(:each) do
    assign(:qualifications_educations, [
      stub_model(Qualifications::Education),
      stub_model(Qualifications::Education)
    ])
  end

  it "renders a list of qualifications/educations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
