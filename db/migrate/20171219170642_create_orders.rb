class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string "status"
      t.integer "account_id"
      t.decimal "total_price"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
