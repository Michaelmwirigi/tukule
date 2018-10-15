class CreateOrderItems < ActiveRecord::Migration[4.2]
  def change
    create_table :order_items do |t|
      t.references :product, index: true
      t.references :order, index: true
      t.decimal :unit_price, precision: 12, scale: 3
      t.integer :quantity
      t.string :type
      t.decimal :total_price, precision: 12, scale: 3

      t.timestamps
    end
  end
end
