class CreateProductorderjoins < ActiveRecord::Migration[6.1]
  def change
    create_table :productorderjoins do |t|
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
