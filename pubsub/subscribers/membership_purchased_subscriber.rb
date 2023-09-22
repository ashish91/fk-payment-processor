module Subscribers

  class MembershipPurchasedSubscriber < Subscriber

    def call(event, item, payload)
      MembershipManager.upgrade_membership(user: payload[:user], new_membership: :pro)
    end
  end

end
