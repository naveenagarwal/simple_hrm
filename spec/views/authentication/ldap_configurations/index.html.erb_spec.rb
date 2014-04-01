require 'spec_helper'

describe "authentication/ldap_configurations/index" do
  before(:each) do
    assign(:authentication_ldap_configurations, [
      stub_model(Authentication::LdapConfiguration),
      stub_model(Authentication::LdapConfiguration)
    ])
  end

  it "renders a list of authentication/ldap_configurations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
