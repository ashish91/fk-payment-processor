class Publisher

  def initialize
    @subscriptions = {}
  end

  def register_subscriber(subscriber, event)
    @subscriptions ||= []
    @subscriptions.push(subscriber)
  end

  def broadcast(event, item, payload={})
    return unless @subscriptions.key?(event)

    @subscriptions[event].each do |subscriber|
      subscriber.call(event, item, payload)
    end
  end
end
