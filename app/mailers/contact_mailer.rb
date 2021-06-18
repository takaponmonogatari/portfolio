class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail to: ENV["TOMAIL"], subject: "【お問い合わせ】" + @contact.subject
  end

  def send_text(contact)
    @contact = contact
    mail to: @contact.email, subject: "【お問い合わせが完了しました】"
  end
end
