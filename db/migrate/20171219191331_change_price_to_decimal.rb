class ChangePriceToDecimal < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :price, :integer
    add_column :events, :price, :decimal
  end
end
