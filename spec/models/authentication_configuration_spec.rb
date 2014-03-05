require File.dirname(__FILE__) + '/../spec_helper'

describe UserManagement::AuthenticationConfiguration do
  it "should be valid" do
    AuthenticationConfiguration.new.should be_valid
  end
end
