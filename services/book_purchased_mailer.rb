require_relative './mailer.rb'

class BookPurchasedMailer < Mailer
  def self.mail(book:)
    super("Printing mailing label.")
  end
end
