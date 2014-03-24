require 'spec_helper'

describe "manage_news/index" do
  before(:each) do
    assign(:manage_news, [
      stub_model(ManageNews),
      stub_model(ManageNews)
    ])
  end

  it "renders a list of manage_news" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
