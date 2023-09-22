module Subscribers

  class DigitalItemPurchasedSubscriber < Subscriber

    def call(event, item, payload)
      DigitalItemPurchasedMailer.mail(item: item)
    end
  end

end
