class Reader < ActiveRecord::Base
  has_many :subscriptions
  has_many :magazines, through: :subscriptions

  def subscribe(magazine, price)
    Subscription.create(
      magazine: magazine,
      reader_id: self.id,
      price: price
    )
  end

  def total_subscription_price
    subscriptions.sum(:price)
  end

  def cancel_subscription(magazine)
    Subscription.find_by(magazine: magazine, reader: self).destroy
  end
end