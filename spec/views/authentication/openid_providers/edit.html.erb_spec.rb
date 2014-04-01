require 'spec_helper'

describe "authentication/openid_providers/edit" do
  before(:each) do
    @authentication_openid_provider = assign(:authentication_openid_provider, stub_model(Authentication::OpenidProvider))
  end

  it "renders the edit authentication_openid_provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authentication_openid_provider_path(@authentication_openid_provider), "post" do
    end
  end
end
