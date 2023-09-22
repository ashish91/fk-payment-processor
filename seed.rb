class Seed
  def self.init_publisher
    Publisher.new
  end

  def self.init_subscribers(publisher:)
    publisher.register_subscriber(BookPurchasedSubscriber, :book_purchased)
    publisher.register_subscriber(DigitalItemSubscriber, :digital_item_purchased)
    publisher.register_subscriber(MembershipPurchasedSubscriber, :membership_purchased)
    publisher.register_subscriber(StovePurchasedSubscriber, :stove_purchased_purchased)
  end
end
