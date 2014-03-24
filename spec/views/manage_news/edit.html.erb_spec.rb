require 'spec_helper'

describe "manage_news/edit" do
  before(:each) do
    @manage_news = assign(:manage_news, stub_model(ManageNews))
  end

  it "renders the edit manage_news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manage_news_path(@manage_news), "post" do
    end
  end
end
