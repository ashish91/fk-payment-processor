require_relative './mailer.rb'

class DigitalItemPurchasedMailer < Mailer
  def self.mail(item:)
    super("Sending email to download digital items.")
  end
end
