class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.has_one :cart

      t.timestamps
    end
  end
end
