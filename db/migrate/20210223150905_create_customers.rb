class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
