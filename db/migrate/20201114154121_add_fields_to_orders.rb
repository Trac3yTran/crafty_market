class AddFieldsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :buyer_id, :integer
    add_column :orders, :seller_id, :integer
  end
end
