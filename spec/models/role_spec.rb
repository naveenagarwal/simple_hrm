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

    it "should not delete a role when users are associated with it" do
      role = create(:role)
      user = User.new(
                email: "testuser@example.com",
                password: "12345678",
                password_confirmation: "12345678"
              )
      user.role = role
      user.save.should be_true
      role.reload
      role.destroy.should be_false
    end

    it "should delete a role when no user is associated with it" do
      role = create(:role)
      role.destroy.should be_true
    end

  end

end
