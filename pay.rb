class OrderPlaced     < RailsEventStore::Event; end
class OrderPaid       < RailsEventStore::Event; end
class OrderCancelled  < RailsEventStore::Event; end

class Order
  include AggregateRoot

  def place
    apply(OrderPlaced.new)
  end

  private

  def apply_order_placed(_)
    PlacedOrder.new
  end
end

class PlacedOrder
  include AggregateRoot

  def pay
    apply(OrderPlaced.new)
  end

  private

  def pay
    PaidOrder.new
  end
end

class PaidOrder
  include AggragateRoot

  def cancel
    apply(OrderCancelled.new)
  end

  private

  def apply_order_cancelled(_)
    CancelledOrder.new
  end
end

class CancelledOrder
  include AggregateRoot
end

