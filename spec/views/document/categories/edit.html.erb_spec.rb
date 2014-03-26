require 'spec_helper'

describe "document/categories/edit" do
  before(:each) do
    @document_category = assign(:document_category, stub_model(Document::Category))
  end

  it "renders the edit document_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_category_path(@document_category), "post" do
    end
  end
end
