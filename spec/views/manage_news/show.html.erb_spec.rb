require 'spec_helper'

describe "manage_news/show" do
  before(:each) do
    @manage_news = assign(:manage_news, stub_model(ManageNews))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
