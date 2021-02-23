class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :date
      t.string :address
      t.date :order_date
      t.string :_status
      t.date :shipment_date
      t.string :total_amount

      t.timestamps
    end
  end
end
