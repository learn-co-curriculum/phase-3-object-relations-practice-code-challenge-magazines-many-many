class Magazine < ActiveRecord::Base
    has_many :subscriptions
    has_many :readers, through: :subscriptions

    def email_list
        self.readers.pluck(:email).join(";")
    end

    def self.most_popular
        Magazine.order(:subscriptions).first
    end
end