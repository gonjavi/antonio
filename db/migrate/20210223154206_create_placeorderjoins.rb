class CreatePlaceorderjoins < ActiveRecord::Migration[6.1]
  def change
    create_table :placeorderjoins do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
