class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.references :item, index: true
      t.references :purchase_order, index: true
      t.float :price

      t.timestamps
    end
  end
end
