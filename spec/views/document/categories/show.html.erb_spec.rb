require 'spec_helper'

describe "document/categories/show" do
  before(:each) do
    @document_category = assign(:document_category, stub_model(Document::Category))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
