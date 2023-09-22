require_relative './mailer.rb'

class DigitalItemPurchaseMailer < Mailer
  def self.mail(book:)
    super("Sending email to download digital items.")
  end
end
