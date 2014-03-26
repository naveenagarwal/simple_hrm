require 'spec_helper'

describe "document/categories/new" do
  before(:each) do
    assign(:document_category, stub_model(Document::Category).as_new_record)
  end

  it "renders new document_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", document_categories_path, "post" do
    end
  end
end
