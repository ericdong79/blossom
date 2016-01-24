class Order < ActiveRecord::Base
  validates :planned_delivery_datetime, presence: true
  validates :receiver_name, presence: true
  validates :receiver_phone, presence: true
  validates :receiver_address, presence: true
end
