class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :cart
      t.belongs_to :product
      t.integer :quantity

      t.timestamps
    end
    add_index :orders, :cart_id
    add_index :orders, :product_id
  end
end
