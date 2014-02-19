require 'spec_helper'

describe Role do

  describe "CRUD role" do

    before do
      @role = Role.new
    end

    it "should not create role without name" do
      @role.should_not be_valid
      @role.should have(1).error_on(:name)
    end

    it "should not accept blank string as role name" do
      @role.name = " "
      @role.should_not be_valid
      @role.should have(1).error_on(:name)
    end

    it "should not create duplicate role name" do
      role = create(:role)
      @role.name = role.name
      @role.should_not be_valid
      @role.should have(1).error_on(:name)
    end

    it "should not create duplicate role name" do
      @role.name = "Human Resource"
      @role.save.should be_true
    end

  end

end
