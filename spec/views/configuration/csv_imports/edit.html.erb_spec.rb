require 'spec_helper'

describe "configuration/csv_imports/edit" do
  before(:each) do
    @configuration_csv_import = assign(:configuration_csv_import, stub_model(Configuration::CsvImport))
  end

  it "renders the edit configuration_csv_import form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", configuration_csv_import_path(@configuration_csv_import), "post" do
    end
  end
end
