require 'spec_helper'

describe "document/categories/index" do
  before(:each) do
    assign(:document_categories, [
      stub_model(Document::Category),
      stub_model(Document::Category)
    ])
  end

  it "renders a list of document/categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
