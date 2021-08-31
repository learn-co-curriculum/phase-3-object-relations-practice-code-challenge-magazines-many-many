class Subscription < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :reader
end