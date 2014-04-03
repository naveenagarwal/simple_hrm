require 'spec_helper'

describe "configuration/csv_imports/new" do
  before(:each) do
    assign(:configuration_csv_import, stub_model(Configuration::CsvImport).as_new_record)
  end

  it "renders new configuration_csv_import form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_csv_imports_path, "post" do
    end
  end
end
