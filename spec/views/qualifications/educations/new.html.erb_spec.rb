require 'spec_helper'

describe "qualifications/educations/new" do
  before(:each) do
    assign(:qualifications_education, stub_model(Qualifications::Education).as_new_record)
  end

  it "renders new qualifications_education form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", qualifications_educations_path, "post" do
    end
  end
end
