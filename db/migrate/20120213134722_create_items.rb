class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.belongs_to :cart

      t.timestamps
    end
    add_index :items, :cart_id
  end
end
