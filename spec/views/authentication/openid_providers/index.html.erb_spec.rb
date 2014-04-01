require 'spec_helper'

describe "authentication/openid_providers/index" do
  before(:each) do
    assign(:authentication_openid_providers, [
      stub_model(Authentication::OpenidProvider),
      stub_model(Authentication::OpenidProvider)
    ])
  end

  it "renders a list of authentication/openid_providers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
