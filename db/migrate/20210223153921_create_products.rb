class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :price
      t.string :image
      t.string :description
      t.string :quantity

      t.timestamps
    end
  end
end
