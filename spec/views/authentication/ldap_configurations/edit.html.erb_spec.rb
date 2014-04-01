require 'spec_helper'

describe "authentication/ldap_configurations/edit" do
  before(:each) do
    @authentication_ldap_configuration = assign(:authentication_ldap_configuration, stub_model(Authentication::LdapConfiguration))
  end

  it "renders the edit authentication_ldap_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authentication_ldap_configuration_path(@authentication_ldap_configuration), "post" do
    end
  end
end
