require 'spec_helper'

describe "Qualifications::Educations" do
  describe "GET /qualifications_educations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get qualifications_educations_path
      response.status.should be(200)
    end
  end
end
