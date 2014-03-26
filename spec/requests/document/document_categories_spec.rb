require 'spec_helper'

describe "Document::Categories" do
  describe "GET /document_categories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get document_categories_path
      response.status.should be(200)
    end
  end
end
