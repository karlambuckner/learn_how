class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer "quantity"
      t.integer "event_id"
      t.integer "order_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
