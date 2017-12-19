class Order < ApplicationRecord
  # belongs_to :account
  has_many :order_items
  before_save :update_total
  before_create :update_status

  # validates :status, :presence => true
  # validates :account_id, :presence => true
  # validates :total_price, :presence => true

  def calculate_total
    self.order_items.collect { |item| item.event.price * item.quantity }.sum
  end

   private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
