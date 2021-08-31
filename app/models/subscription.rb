class Subscription < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :reader

  def print_details
    puts "#{reader.name} subscribed to #{magazine.title} for $#{price}"
  end
end