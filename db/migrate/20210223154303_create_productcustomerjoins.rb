class CreateProductcustomerjoins < ActiveRecord::Migration[6.1]
  def change
    create_table :productcustomerjoins do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
