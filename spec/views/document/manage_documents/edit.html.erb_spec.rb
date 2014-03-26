require 'spec_helper'

describe "document/manage_documents/edit" do
  before(:each) do
    @document_manage_document = assign(:document_manage_document, stub_model(Document::ManageDocument))
  end

  it "renders the edit document_manage_document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_manage_document_path(@document_manage_document), "post" do
    end
  end
end
