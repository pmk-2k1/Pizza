class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :category, default:0
      t.string :name
      t.string :description
      t.integer :size, default: 0
      t.integer :price_prodcut

      t.timestamps
    end
  end
end
