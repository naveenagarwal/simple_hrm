require 'spec_helper'

describe EmploymentStatus do

  before do
    @employment_status = EmploymentStatus.new
  end

  it "should now allow blank employment status to be saved" do
    @employment_status.save.should be_false
    @employment_status.should have(1).error_on(:name)
  end

  it "should now allow duplicate employment status to be saved" do
    employment_status = create(:employment_status)
    @employment_status.name = employment_status.name
    @employment_status.save.should be_false
    @employment_status.should have(1).error_on(:name)
  end

  it "should now allow valid employment status to be saved" do
    employment_status = create(:employment_status)
    @employment_status.name = "Part Time"
    @employment_status.save.should be_true
  end

end
