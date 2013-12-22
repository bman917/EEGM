class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.text :name

      t.timestamps
    end
    add_index :suppliers, :name, unique: true
  end
end
