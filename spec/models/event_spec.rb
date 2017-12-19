require 'rails_helper'

describe Event do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should validate_presence_of :location }
  it { should validate_presence_of :image }
  it { should validate_presence_of :date }
end

  describe Event, 'association' do
    it { should have_many :order_items }
  end

  describe Event, 'column_specification' do
    it { should have_db_column(:price) }
    it { should have_db_column(:name) }
    it { should have_db_column(:location) }
    it { should have_db_column(:date) }
    it { should have_db_column(:image) }
    it { should have_db_column(:description) }
  end
