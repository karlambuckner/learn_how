class Event < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :location, :presence => true
  validates :image, :presence => true
  validates :date, :presence => true
end
