class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.float :unit_price
      t.float :total_price
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
