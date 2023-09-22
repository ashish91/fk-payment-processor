module Subscribers

  class DigitalItemPurchasedSubscriber < Subscriber

    def self.call(event, item, payload)
      DigitalItemPurchasedMailer.mail(item: item)
    end
  end

end
