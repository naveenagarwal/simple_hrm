require File.dirname(__FILE__) + '/../spec_helper'

describe UserAuthenticationConfiguration do
  it "should be valid" do
    UserAuthenticationConfiguration.new.should be_valid
  end
end
