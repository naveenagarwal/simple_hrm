require 'spec_helper'

describe CsvImport do

  before do
    @csv_import = CsvImport.new
  end

  it "will only not upload files other than csv file" do
    @csv_import.attachment = File.open(Rails.root + "spec/data/files/sample_test_file.txt")
    @csv_import.save
    @csv_import.should have(1).error_on(:attachment)
  end

  it "will upload the csv file successfully" do
    @csv_import.attachment = File.open(Rails.root + "spec/data/files/csv_test_file.csv")
    @csv_import.save
    @csv_import.attachment.url.should_not be_blank
    @csv_import.persisted?.should be_true
  end


end
