class AddImageProductToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image_product, :string
    add_column :products, :string, :string
  end
end
