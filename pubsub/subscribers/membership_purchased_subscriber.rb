module Subscribers

  class MembershipPurchasedSubscriber < Subscriber

    def self.call(event, item, payload)
      MembershipManager.upgrade_membership(user: payload[:user], new_membership: :pro)
    end
  end

end
