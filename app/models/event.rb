class Event < ActiveRecord::Base

  has_many :order_items

  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true
  validates :image, :presence => true
  validates :date, :presence => true
end
