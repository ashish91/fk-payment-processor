class Seed
  def self.init_publisher
    Publisher.new
  end

  def self.init_subscribers(publisher:)
    publisher.register_subscriber(Subscribers::BookPurchasedSubscriber, :book_purchased)
    publisher.register_subscriber(Subscribers::MembershipPurchasedSubscriber, :membership_purchased)
    publisher.register_subscriber(Subscribers::StovePurchasedSubscriber, :stove_purchased)
    publisher.register_subscriber(Subscribers::DigitalItemPurchasedSubscriber, :digital_item_purchased)
  end
end
