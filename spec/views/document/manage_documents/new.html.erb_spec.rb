require 'spec_helper'

describe "document/manage_documents/new" do
  before(:each) do
    assign(:document_manage_document, stub_model(Document::ManageDocument).as_new_record)
  end

  it "renders new document_manage_document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_manage_documents_path, "post" do
    end
  end
end
