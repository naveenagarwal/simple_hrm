require 'spec_helper'

describe "manage_news/new" do
  before(:each) do
    assign(:manage_news, stub_model(ManageNews).as_new_record)
  end

  it "renders new manage_news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manage_news_index_path, "post" do
    end
  end
end
