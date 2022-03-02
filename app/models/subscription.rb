class Subscription < ActiveRecord::Base
    belongs_to :magazine
    belongs_to :reader

    def print_details
         puts "#{self.reader.name} subscribed to #{self.magazine.title} for $#{price}"
    end
end