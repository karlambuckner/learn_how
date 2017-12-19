class OrderItem < ApplicationRecord
  belongs_to :event
  belongs_to :order


  validates :quantity, :presence => true
  validates :event_id, :presence => true
  validates :order_id, :presence => true
end
