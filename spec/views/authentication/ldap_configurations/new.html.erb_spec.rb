require 'spec_helper'

describe "authentication/ldap_configurations/new" do
  before(:each) do
    assign(:authentication_ldap_configuration, stub_model(Authentication::LdapConfiguration).as_new_record)
  end

  it "renders new authentication_ldap_configuration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authentication_ldap_configurations_path, "post" do
    end
  end
end
