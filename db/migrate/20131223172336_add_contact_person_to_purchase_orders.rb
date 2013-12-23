class AddContactPersonToPurchaseOrders < ActiveRecord::Migration
  def change
    add_column :purchase_orders, :contact_person, :string
  end
end
