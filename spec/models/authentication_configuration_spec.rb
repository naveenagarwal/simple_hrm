require File.dirname(__FILE__) + '/../spec_helper'

describe UserManagement::AuthenticationConfiguration do
  it "should be valid" do
    UserManagement::AuthenticationConfiguration.new.should be_valid
  end
end
