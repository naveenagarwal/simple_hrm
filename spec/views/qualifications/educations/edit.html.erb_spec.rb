require 'spec_helper'

describe "qualifications/educations/edit" do
  before(:each) do
    @qualifications_education = assign(:qualifications_education, stub_model(Qualifications::Education))
  end

  it "renders the edit qualifications_education form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", qualifications_education_path(@qualifications_education), "post" do
    end
  end
end
