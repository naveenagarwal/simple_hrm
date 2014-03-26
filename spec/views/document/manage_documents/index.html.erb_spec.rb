require 'spec_helper'

describe "document/manage_documents/index" do
  before(:each) do
    assign(:document_manage_documents, [
      stub_model(Document::ManageDocument),
      stub_model(Document::ManageDocument)
    ])
  end

  it "renders a list of document/manage_documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
