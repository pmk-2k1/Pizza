class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.integer :total
      t.integer :payment_method, default: 0

      t.timestamps
    end
  end
end
