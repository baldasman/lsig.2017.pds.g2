class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.float :price
      t.date :deadline
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
