class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :supplier, index: true
      t.integer :number

      t.timestamps
    end
  end
end
