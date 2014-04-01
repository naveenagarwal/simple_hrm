require 'spec_helper'

describe "authentication/openid_providers/new" do
  before(:each) do
    assign(:authentication_openid_provider, stub_model(Authentication::OpenidProvider).as_new_record)
  end

  it "renders new authentication_openid_provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authentication_openid_providers_path, "post" do
    end
  end
end
