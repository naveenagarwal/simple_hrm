require 'spec_helper'

describe SalaryComponent do
  describe "salary component" do

    before do
      @salary_component = SalaryComponent.new
    end

    it "should not create salary component without name" do
      @salary_component.save.should be_false
      @salary_component.should have(1).error_on(:name)
    end

    it "should not accept blank string as salary component name" do
      @salary_component.name = " "
      @salary_component.should_not be_valid
      @salary_component.should have(1).error_on(:name)
    end

    it "should not create duplicate salary_component name" do
      salary_component =  create(:salary_component)
      @salary_component.name = salary_component.name
      @salary_component.should_not be_valid
      @salary_component.should have(1).error_on(:name)
    end


    it "should create salary_component when name is present" do
      @salary_component.name = "Basic"
      @salary_component.save.should be_true
    end

  end
end
