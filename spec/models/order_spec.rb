require 'rails_helper'

describe Order, 'association' do
  it { should have_many :order_items }
end

describe Order, 'column_specification' do
  it { should have_db_column(:status) }
  it { should have_db_column(:account_id) }
  it { should have_db_column(:total_price) }
end
