require_relative './mailer.rb'

class BookPurchaseMailer < Mailer
  def self.mail(book:)
    super("Printing mailing label.")
  end
end
