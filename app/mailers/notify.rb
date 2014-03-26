class Notify < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify.test_email_configuration.subject
  #
  def test_email_configuration(smtp_settings, email)
    @greeting = "Hi"

    mail(
      from:         "noreply@example.com",
      to:           email,
      subject:      "This is a test email. Please ignore!",
      delivery_method_options: smtp_settings
    )
  end
end
