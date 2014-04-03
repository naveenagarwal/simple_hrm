require 'spec_helper'

describe "configuration/csv_imports/index" do
  before(:each) do
    assign(:configuration_csv_imports, [
      stub_model(Configuration::CsvImport),
      stub_model(Configuration::CsvImport)
    ])
  end

  it "renders a list of configuration/csv_imports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
