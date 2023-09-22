module Subscribers

  class StovePurchasedSubscriber < Subscriber

    def self.call(event, item, payload)
      ItemInstructions.print_instructions(item: item)
    end
  end

end
