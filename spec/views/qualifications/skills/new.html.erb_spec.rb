require 'spec_helper'

describe "qualifications/skills/new" do
  before(:each) do
    assign(:qualifications_skill, stub_model(Qualifications::Skill,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new qualifications_skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", qualifications_skills_path, "post" do
      assert_select "input#qualifications_skill_name[name=?]", "qualifications_skill[name]"
      assert_select "textarea#qualifications_skill_description[name=?]", "qualifications_skill[description]"
    end
  end
end
