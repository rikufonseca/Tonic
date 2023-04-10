class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.thank-you.subject
  #
  def incoming
    @message = params[:message]
    @contact = @message.contact
    mail(to: "fonsecarika@gmail.com", subject: "New message from Tonic website")
  end

  def thanks
    @message = params[:message]
    @contact = @message.contact
    mail(to: @contact.email, subject: "Many thanks for you interest in Tonic")
  end
end
