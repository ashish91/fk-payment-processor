module Subscribers

  class BookPurchasedSubscriber < Subscriber

    def self.call(event, item, payload)
      BookPurchasedMailer.mail(book: item)
      SendCommissionToAgent.pay(item: item, agent: payload[:agent])
    end
  end

end
