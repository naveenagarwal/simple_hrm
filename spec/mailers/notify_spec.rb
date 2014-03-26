require "spec_helper"

describe Notify do
  describe "test_email_configuration" do
    let(:mail) { Notify.test_email_configuration }

    it "renders the headers" do
      mail.subject.should eq("Test email configuration")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
